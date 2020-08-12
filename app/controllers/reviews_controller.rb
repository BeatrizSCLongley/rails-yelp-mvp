class ReviewsController < ApplicationController
  def new
    # We need to use the simple_form to create a review
    # We associate the review to the restaurant through its id
    @restaurant = Restaurant.find(params[:restaurant_id])
    # We create an instance of review
    @review = Review.new
  end

  def create
    # Create an instance of review
    @review = Review.new(review_params)
    # We find the restaurant through its id (associate review)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    # We then save it and redirect to the parent restaurant
    # The if statment renders the creation of a review with error
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
