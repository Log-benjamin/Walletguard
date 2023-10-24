class Category < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :user
  has_many :category_activities
  has_many :activities, through: :category_activities
end
