module AnswersHelper
  def answer_header(answer)
    if answer.new_record?
      "Create new answer"
    else
      "Edit answer"
    end
  end
end
