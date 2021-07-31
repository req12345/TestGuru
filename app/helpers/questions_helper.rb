module QuestionsHelper
  def question_header(question)
    if question.new_record?
      t('shared.header.question_create')
    else
      t('shared.header.question_edit')
    end
  end
end
