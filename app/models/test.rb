class Test < ApplicationRecord
  belongs_to :category
  has_many :questions, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  scope :easy, ->{ where(level: 0..1) }
  scope :middle, ->{ where(level: 2..4) }
  scope :hard, ->{ where(level: 5..Float::INFINITY) }
  scope :by_category, ->(category) { joins(:category).where(categories: { title: category }) }
  scope :by_level, ->(level) { where(level: level) }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.all_in_category(category)
    by_category(category).order(id: :desc).pluck('tests.title')
  end
end
