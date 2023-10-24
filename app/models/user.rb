class User < ApplicationRecord
  validates :name, presence: true

  has_many :activities
  has_many :categories
end
