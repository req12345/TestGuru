class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      redirect_to root_path, notice: 'succes'
    else
      render :new
    end
  end

  private

  def feedback_params
    params.required(:feedback).permit(:user_name, :email, :header, :content)
  end
end
