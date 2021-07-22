class Badge < ApplicationRecord
  BADGES_RULES = %w[all_in_animal on_first_try certain_level].freeze

  has_many :user_badges
  has_many :users, through: :user_badges

  validates :title, :image_url, :rule, presence: true
end
