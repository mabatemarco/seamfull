class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string "name", null:false
      t.string "phone", null:false
      t.string "email", null:false
      t.boolean "owner", default:false
      t.string "street_address", null:false
      t.string "street_address_2", null:false
      t.string "city", null:false
      t.string "state", null:false
      t.string "zip", null:false
      



      t.timestamps
    end
  end
end
