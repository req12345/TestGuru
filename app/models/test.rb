class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :users_tests
  has_many :users, through: :users_tests
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  validates :title, :category, :author_id presence: true

  def self.by_category(category)
      joins('INNER JOIN categories ON tests.category_id = categories.id')
      .where('categories.title = ?', category).order(id: :desc).pluck('tests.title')
  end
end
