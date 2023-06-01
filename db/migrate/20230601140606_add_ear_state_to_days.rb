class AddEarStateToDays < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :ear_state, :string
  end
end
