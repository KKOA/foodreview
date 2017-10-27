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
    p flash[:error],'tyhh'
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
    #  flash[:error_count] =
    # p flash[:error]
    #  render 'edit'
     redirect_to edit_restaurant_path(@restaurant)
   end


  end

  def upadte
  end

  def destroy
  end

  def restaurant_params
    params.require(:restaurant).permit(:name,:description,
    :address1,:address2,:city,:county,:postcode,:image)
  end

end
