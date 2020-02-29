# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_29_055314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.bigint "option_id", null: false
    t.string "choice", null: false
    t.decimal "extra", precision: 5, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option_id"], name: "index_choices_on_option_id"
  end

  create_table "cuisines", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_cuisines_on_restaurant_id"
  end

  create_table "foods", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.string "name", null: false
    t.decimal "price", precision: 5, scale: 2, null: false
    t.text "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_foods_on_restaurant_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.text "list_item", null: false
    t.decimal "price", precision: 5, scale: 2, null: false
    t.text "special_instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_items_on_order_id"
  end

  create_table "options", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.string "option"
    t.decimal "extra", precision: 5, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_options_on_food_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "user_id", null: false
    t.decimal "subtotal", precision: 6, scale: 2
    t.decimal "tax", precision: 5, scale: 2
    t.decimal "total", precision: 6, scale: 2
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.boolean "owner", default: false
    t.string "street_address", null: false
    t.string "street_address_2", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.string "street_address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.time "sun_open", null: false
    t.time "sun_close", null: false
    t.time "mon_open", null: false
    t.time "mon_close", null: false
    t.time "tue_open", null: false
    t.time "tue_close", null: false
    t.time "wed_open", null: false
    t.time "wed_close", null: false
    t.time "thur_open", null: false
    t.time "thur_close", null: false
    t.time "fri_open", null: false
    t.time "fri_close", null: false
    t.time "sat_open", null: false
    t.time "sat_close", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "restaurant_id", null: false
    t.integer "score", limit: 2, null: false
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "choices", "options"
  add_foreign_key "cuisines", "restaurants"
  add_foreign_key "foods", "restaurants"
  add_foreign_key "items", "orders"
  add_foreign_key "options", "foods"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "restaurants", "users"
  add_foreign_key "reviews", "restaurants"
  add_foreign_key "reviews", "users"
end
