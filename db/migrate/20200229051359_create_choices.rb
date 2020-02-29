class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.references :option, null: false, foreign_key: true
      t.string "choice", null:false
      t.decimal "extra", precision:5, scale:2

      t.timestamps
    end
  end
end
