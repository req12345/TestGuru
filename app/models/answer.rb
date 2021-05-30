class Answer < ApplicationRecord
  belongs_to :question

  scope :correct_answer, -> { where(correct: true) }

  validates :body, presence: true
  validate :validate_maximum_answers, on: :create

  def validate_maximum_answers
    errors.add(:amount, 'Amount of answer can not be more then 4') if question.answers.count > 3
  end
end
