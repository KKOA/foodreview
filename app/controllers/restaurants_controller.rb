class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # render plain: params[:restaurant].inspect
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    # p flash[:error]
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      #  flash[:error] = @restaurant.errors.full_messages
      flash[:error] = @restaurant.errors
      flash[:full_messages] = @restaurant.errors.full_messages
      flash[:form] = @restaurant
      redirect_to edit_restaurant_path(@restaurant)
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :name, :description,
      :address1, :address2,
      :city, :county, :postcode,
      :image, :image_cache
    )
  end
end
