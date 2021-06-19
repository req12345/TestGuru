class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]

  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def edit; end

  def update
    if @question.answer.update(answer_params)
      redirect_to @answer
    else
      render :edit
    end
  end

  def create
    @answer = @question.answers.new(answer_params)
      if @answer.save
        redirect_to @answer
      else
        render :new
      end
    end

  def destroy
    @answer.destroy
    redirect_to admin_answer_path(@answer.question)
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body)
  end
end
