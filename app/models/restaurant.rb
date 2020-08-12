class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  # Reminder - when I create a form for the user to create an instance
  # I will need to tell it to fetch the options here

  # Array in Capital letters = create a constant that will be
  # available outside the model - in the html view files
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
end
