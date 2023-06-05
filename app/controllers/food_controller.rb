class FoodController < ApplicationController
  before_action :set_day

  def daily_meals
    @meals = @day.meals.reverse
  end

  def update_daily_meal
    new_meal_id = params[:meal] || nil

    if @day.meals.create!(food_id: new_meal_id)
      redirect_to daily_meals_path(@day)
    end
  end

  def create_new_meal
    new_food = Food.new(emoji: params[:emoji], name: params[:name])

    Food.transaction do
      new_food.save!

      @day.meals.create!(food_id: new_food.reload.id)
    end

    redirect_to daily_meals_path(@day)
  end

  private

  def set_day
    @day = Day.find(params[:id])
  end
end
