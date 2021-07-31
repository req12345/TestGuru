class TestPassage < ApplicationRecord
  CONDITION_OF_PASSAGE = 85
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_current_question

  scope :successfull, -> { where(success: true) }

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids)

    save!
  end

  def completed?
    current_question.nil?
  end

  def current_question_number
    test.questions.index(current_question) + 1
  end

  def total_questions
    test.questions.count
  end

  def player_passage_percentes
    ((correct_questions * 100).to_f/test.questions.count).round(2)
  end

  def test_successful
    player_passage_percentes >= CONDITION_OF_PASSAGE
  end

  def success_true
    self.update(success: true)
  end

  def test_failed
    true if player_passage_percentes < CONDITION_OF_PASSAGE
  end


  def time_is_out?
    return if self.test.passing_time == nil
      ((self.created_at + self.test.passing_time * 60) - Time.now) <= 0
  end

  private

  def before_validation_set_current_question
    self.current_question = next_question
  end

  def correct_answer?(answer_ids)
    return if self.current_question.answers.empty?

    correct_answers_count = correct_answers.count

    (correct_answers_count == correct_answers.where(id: answer_ids).count) &&
    correct_answers_count == answer_ids.count
  end

  def correct_answers
    current_question.answers.correct_answer
  end

  def next_question
    if current_question
      test.questions.order(:id).where('id > ?', current_question.id).first
    else
      test.questions.first
    end
  end
end
