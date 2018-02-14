class Review < ApplicationRecord
  RATING = 0..5
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING,
  message: "%{value} is not a valid category" }
end

# A review must have content and a rating. The rating should be a number between 0 and 5.
