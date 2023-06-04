class FoodController < ApplicationController
  before_action :set_day, only: %i[ daily_meals update_daily_meal ]
  def daily_meals
    @meals = @day.meals
  end

  def update_daily_meal
    new_meal_id = params[:meal] || nil

    if @day.meals.create!(food_id: new_meal_id)
      redirect_to daily_meals_path(@day)
    end
  end

  private

  def set_day
    @day = Day.find(params[:id])
  end
end
