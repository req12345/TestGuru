class Admin::AnswersController < ApplicationController
  before_action :find_question, only: %i[create]
  before_action :find_answer, only: %i[edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_answer_not_found

  def new
    @question = Question.find_by(id: params[:format])
    @answer = @question.answers.new
  end

  def edit; end

  def update
    if @answer.update(answer_params)
      redirect_to [:admin, @answer.question]
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
    @question = Question.find_by(id: params[:question_id])
  end

  def find_answer
    @answer = Answer.find_by(id: params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body, :correct)
  end

  def rescue_with_answer_not_found
    render plain: 'Answer not found'
  end
end
