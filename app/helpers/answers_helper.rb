module AnswersHelper
  def answer_header(answer)
    if answer.new_record?
      t('shared.header.answer_create')
    else
      t('shared.header.answer_edit')
    end
  end
end
