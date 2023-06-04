class AddFood < ActiveRecord::Migration[7.0]
  def change
    create_table :food do |t|
      t.string :name
      t.string :emoji

      t.timestamps
    end
  end
end
