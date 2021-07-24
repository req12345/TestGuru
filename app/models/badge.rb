class Badge < ApplicationRecord
  BADGES_RULES = %w[all_in_category_music on_first_try all_level_1_tests].freeze

  has_many :user_badges
  has_many :users, through: :user_badges

  validates :title, :image_url, :rule, presence: true
end
