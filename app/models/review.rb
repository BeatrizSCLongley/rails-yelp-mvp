class Review < ApplicationRecord
  # A review must belong to a restaurant:
  belongs_to :restaurant

  # A review must have content and a rating:
  validates :content, :rating, presence: true
  # A review rating must be a number between 0 and 5:
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
  # validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
