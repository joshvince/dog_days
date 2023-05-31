class CreateScratches < ActiveRecord::Migration[7.0]
  def change
    create_table :scratches do |t|
      t.belongs_to :day, null: false, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
