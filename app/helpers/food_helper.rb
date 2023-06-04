module FoodHelper
  def meal_options
    Food.all.map { |food| [food.name, food.id] }
  end
end
