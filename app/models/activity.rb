class Activity < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :author, class_name: 'User'
  has_many :category_activities, foreign_key: :activity_id
  has_many :categories, through: :category_activities
end
