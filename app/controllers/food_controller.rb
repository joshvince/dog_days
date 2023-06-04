class FoodController < ApplicationController
  def daily_meals
    @day = Day.find(params[:id])
    @meals = @day.meals
  end
end
