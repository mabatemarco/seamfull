class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.references :food, null: false, foreign_key: true
      t.string "option"
      t.decimal "extra", precision:5, scale:2
      t.timestamps
    end
  end
end
