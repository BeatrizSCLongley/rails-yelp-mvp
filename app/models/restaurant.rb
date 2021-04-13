class Restaurant < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews must be destroyed as well:
  has_many :reviews, dependent: :destroy

  # A restaurant must have a name, an address and a category
  validates :name, :address, :category, presence: true

  # A restaurant category must belong to this fixed list:
  # Array in Capital letters = create a constant that will be
  # available outside the model - in the html view files
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: CATEGORIES }
end
