class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])

    # @review = @restaurant.reviews.create(review_params)
    if @restaurant.reviews.create(review_params)
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurant#new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
