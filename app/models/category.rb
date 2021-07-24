class Category < ApplicationRecord
  has_many :tests

  default_scope { order(title: :asc) }
  scope :animals, ->{ where(title: 'Animals') }

  validates :title, presence: true


end
