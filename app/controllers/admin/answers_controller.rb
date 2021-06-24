class Admin::AnswersController < ApplicationController
  before_action :find_question, only: %i[new create destroy]
  before_action :find_answer, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_answer_not_found

  def index
    @answers = Answer.all
  end

  def show; end

  def new
    @answer = @question.answers.new
  end

  def edit; end

  def update
    if @answer.update(answer_params)
      redirect_to admin_question_path(@answer)
    else
      render :edit
    end
  end

  def create
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to admin_question_path(@answer.question)
    else
      render :new
    end
  end

  def destroy
    @answer.destroy
    redirect_to admin_question_path(@answer.question)
  end

  private

  def find_question
    @question = Question.find_by(params[:question_id])
  end

  def find_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Answer not found'
  end
end
