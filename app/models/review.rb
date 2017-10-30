class Review < ApplicationRecord
  belongs_to :restaurant
  validates :comment, presence: true, length: { minimum: 3 }
  validates :rating, presence: true
end
