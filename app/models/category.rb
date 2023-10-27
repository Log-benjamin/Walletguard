class Category < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :author, class_name: 'User'
  has_many :category_activities, foreign_key: :category_id
  has_many :activities, through: :category_activities
end
