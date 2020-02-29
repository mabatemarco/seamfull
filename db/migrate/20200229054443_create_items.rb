class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :order, null: false, foreign_key: true
      t.text "list_item", null:false
      t.decimal "price", precision: 5, scale: 2, null:false
      t.text "special_instructions"
      t.timestamps
    end
  end
end
