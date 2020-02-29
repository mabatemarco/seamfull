class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.references :user, null: false, foreign_key: true
      t.string "name", null:false
      t.string "phone", null:false
      t.string "street_address", null:false
      t.string "city", null:false
      t.string "state", null:false
      t.string "zip", null:false
      t.time "sun_open", null:false
      t.time "sun_close", null:false
      t.time "mon_open", null:false
      t.time "mon_close", null:false
      t.time "tue_open", null:false
      t.time "tue_close", null:false
      t.time "wed_open", null:false
      t.time "wed_close", null:false
      t.time "thur_open", null:false
      t.time "thur_close", null:false
      t.time "fri_open", null:false
      t.time "fri_close", null:false
      t.time "sat_open", null:false
      t.time "sat_close", null:false
      t.timestamps
    end
  end
end
