class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal "subtotal", precision:6, scale:2
      t.decimal "tax", precision:5, scale:2
      t.decimal "total", precision:6, scale:2
      t.text "instructions"
      t.timestamps
    end
  end
end
