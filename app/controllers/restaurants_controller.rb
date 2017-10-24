class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def create
    # render plain: params[:restaurant].inspect
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def upadte
  end

  def destroy
  end

  def restaurant_params
    params.require(:restaurant).permit(:name,:description,
    :address1,:address2,:city,:county,:postcode)
  end

end
