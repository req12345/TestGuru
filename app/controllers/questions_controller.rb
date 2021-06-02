class QuestionsController < ApplicationController
  before_action :find_test, only: %i[create index]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    questions = @test.questions
    questions_html = ''
    questions_html << "<h1>#{@test.title}</h1>"
    questions.each { |q| questions_html << "<p>#{q.id} - #{q.body}</p>" }
    render inline: questions_html
  end

  def show
    @test = @question.test
    render inline: '<h1> Test: <%= @test.title %></h1> <p>Question № <%= @question.id %>. <%= @question.body %><p>'
  end

  def new; end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      render inline: '<p>Question № <%= @question.id %>. "<%= @question.body %>" created<p>'
    else
      render plain: 'The question was not created'
    end
  end

  def destroy
    @question.destroy
  end

  private

  def find_test
    @test = Test.find_by(id: params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question not found'
  end
end
