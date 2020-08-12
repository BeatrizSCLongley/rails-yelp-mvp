class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }

  # Rating should be a number between 0 and 5
  # RATING = [0, 1, 2, 3, 4, 5]
end