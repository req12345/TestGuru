class QuestionsController < ApplicationController
  before_action :find_test, only: %i[create]
  before_action :find_question, only: %i[show, destroy]

  def index
    test = Test.find_by(id: params[:test_id])
    questions = test.questions
    questions_html = ""
    questions_html << "<h1>#{test.title}</h1>"
    questions.each { |q| questions_html << "<p>#{q.id} - #{q.body}</p>" }
    render inline: questions_html
  end

  def show
    @test = @question.test
    render inline: '<h1> Test: <%= @test.title %></h1> <p>Question № <%= @question.id %>. <%= @question.body %><p>'
  end

   def new; end

   def create
     @question = @test.questions.create(question_params)
     render inline: '<p>Question № <%= @question.id %>. "<%= @question.body %>" created<p>'
   end

   private

   def find_test
     @test = Test.find_by(id: params[:test_id])
   end

   def find_question
     @question = Question.find_by(id: params[:id])
   end

   def question_params
     params.require(:question).permit(:body)
   end
end
