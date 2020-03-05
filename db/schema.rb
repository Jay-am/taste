# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_05_113959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookmarks", force: :cascade do |t|
    t.text "set_note"
    t.bigint "restaurant_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_bookmarks_on_profile_id"
    t.index ["restaurant_id"], name: "index_bookmarks_on_restaurant_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.string "cuisine", array: true
    t.string "special_features", array: true
    t.string "occasion", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.boolean "marked", default: false
=======
    t.float "latitude"
    t.float "longitude"
    t.string "styles", array: true
    t.string "dishes", array: true
    t.string "food_types", array: true
    t.string "food_styles", array: true
    t.string "gastronomies", array: true
    t.string "drinks", array: true
    t.string "service", array: true
    t.string "location", array: true
    t.string "languages", array: true
    t.string "open_hours", array: true
    t.string "distance", array: true
    t.string "located", array: true
    t.string "payments", array: true
>>>>>>> master
    t.index ["cuisine"], name: "index_restaurants_on_cuisine", using: :gin
    t.index ["occasion"], name: "index_restaurants_on_occasion", using: :gin
    t.index ["special_features"], name: "index_restaurants_on_special_features", using: :gin
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "rating", null: false
    t.integer "meal_rating", null: false
    t.integer "service_rating", null: false
    t.integer "location_rating", null: false
    t.string "cuisine", array: true
    t.string "special_features", array: true
    t.string "occasion", array: true
    t.bigint "restaurant_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "local", default: false
    t.index ["cuisine"], name: "index_reviews_on_cuisine", using: :gin
    t.index ["occasion"], name: "index_reviews_on_occasion", using: :gin
    t.index ["profile_id"], name: "index_reviews_on_profile_id"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    t.index ["special_features"], name: "index_reviews_on_special_features", using: :gin
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookmarks", "profiles"
  add_foreign_key "bookmarks", "restaurants"
  add_foreign_key "reviews", "profiles"
  add_foreign_key "reviews", "restaurants"
end
