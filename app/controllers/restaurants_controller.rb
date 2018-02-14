class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show] #, :edit, :update, :destroy]

  def index
    #on récupère un array d'instances
    @restaurants = Restaurant.all
  end
  def show
    # 1 seul
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    # raise
    @restaurant.save
    redirect_to restaurants_path
  end
  # def edit
  # end
  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end
  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
