class User < ApplicationRecord
  has_many :users_tests
  has_many :tests, through: :users_tests
  has_many :author_tests, class_name: 'Test', foreign_key: :author_id

  validates :name, presence: true
  
  def tests_by_level(level)
    Test.joins('INNER JOIN users_tests ON users_tests.test_id = tests.id')
        .where('tests.level = ?', level)
        .where(users_tests: { user_id: self.id })
  end
end
