class RestaurantsController < ApplicationController

before_action :set_restaurants, only: :show

  def index
    @restaurants = Restaurant.all   
  end

  def show 
    @restaurant
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.create(restaurants_params)
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

end
