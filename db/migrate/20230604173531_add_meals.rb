class AddMeals < ActiveRecord::Migration[7.0]
  def change
    create_join_table :days, :food, table_name: :meals do |t|
      t.index [:day_id, :food_id]
      t.index [:food_id, :day_id]
    end
  end
end
