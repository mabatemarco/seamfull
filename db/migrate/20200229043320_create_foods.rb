class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string "name", null:false
      t.decimal "price", precision:5, scale: 2, null:false
      t.text "description"
      t.string "category"

      t.timestamps
    end
  end
end
