module QuestionsHelper
  def question_header(question)
    if Question.new_record?
      puts "Create new question"
    else
      puts "Edit question"
    end
  end
end
