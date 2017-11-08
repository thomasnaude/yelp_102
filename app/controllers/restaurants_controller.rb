class RestaurantsController < ApplicationController
  def index
    # if a category is defined, return the restaurants for that category
    # else return all restaurants
    @category = params[:category]
    if @category.present?
      @restaurants = Restaurant.where(category: @category)
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end
