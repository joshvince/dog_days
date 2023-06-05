class AddMedicineAndDoses < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :days, :medicines, table_name: :doses do |t|
      t.index [:day_id, :medicine_id]
      t.index [:medicine_id, :day_id]
    end
  end
end
