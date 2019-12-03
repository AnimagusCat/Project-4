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

ActiveRecord::Schema.define(version: 2019_12_03_092642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
  end

  create_table "cuisines_outlets", force: :cascade do |t|
    t.bigint "cuisine_id"
    t.bigint "outlet_id"
    t.index ["cuisine_id"], name: "index_cuisines_outlets_on_cuisine_id"
    t.index ["outlet_id"], name: "index_cuisines_outlets_on_outlet_id"
  end

  create_table "outlets", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.text "logo"
    t.string "block"
    t.string "road"
    t.string "building"
    t.string "unit"
    t.string "postal_code"
    t.string "dining_type"
    t.string "halal_type"
    t.text "menu"
    t.string "website"
    t.string "phone"
    t.string "opening_hours"
    t.index ["user_id"], name: "index_outlets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
