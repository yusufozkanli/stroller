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

ActiveRecord::Schema.define(version: 20171210214512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "museums", force: :cascade do |t|
    t.string "category"
    t.bigint "city_id"
    t.bigint "neighborhood_id"
    t.bigint "walk_id"
    t.string "photo"
    t.integer "hours"
    t.string "address"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_museums_on_city_id"
    t.index ["neighborhood_id"], name: "index_museums_on_neighborhood_id"
    t.index ["walk_id"], name: "index_museums_on_walk_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.bigint "city_id"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_neighborhoods_on_city_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.integer "price"
    t.integer "hours"
    t.bigint "city_id"
    t.bigint "neighborhood_id"
    t.bigint "walk_id"
    t.string "photo"
    t.string "address"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_restaurants_on_city_id"
    t.index ["neighborhood_id"], name: "index_restaurants_on_neighborhood_id"
    t.index ["walk_id"], name: "index_restaurants_on_walk_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "category"
    t.bigint "city_id"
    t.bigint "neighborhood_id"
    t.bigint "walk_id"
    t.string "photo"
    t.integer "hours"
    t.string "address"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_shops_on_city_id"
    t.index ["neighborhood_id"], name: "index_shops_on_neighborhood_id"
    t.index ["walk_id"], name: "index_shops_on_walk_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walks", force: :cascade do |t|
    t.bigint "city_id"
    t.bigint "neighborhood_id"
    t.integer "stops"
    t.string "focus"
    t.string "photo"
    t.integer "duration"
    t.integer "length"
    t.string "start_point"
    t.string "end_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_walks_on_city_id"
    t.index ["neighborhood_id"], name: "index_walks_on_neighborhood_id"
  end

  add_foreign_key "museums", "cities"
  add_foreign_key "museums", "neighborhoods"
  add_foreign_key "museums", "walks"
  add_foreign_key "neighborhoods", "cities"
  add_foreign_key "restaurants", "cities"
  add_foreign_key "restaurants", "neighborhoods"
  add_foreign_key "restaurants", "walks"
  add_foreign_key "shops", "cities"
  add_foreign_key "shops", "neighborhoods"
  add_foreign_key "shops", "walks"
  add_foreign_key "walks", "cities"
  add_foreign_key "walks", "neighborhoods"
end
