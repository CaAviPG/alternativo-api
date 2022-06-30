# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_29_223340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "continentes", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "igeograficos", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.integer "altura"
    t.text "historia"
    t.bigint "paisplace_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["paisplace_id"], name: "index_igeograficos_on_paisplace_id"
    t.index ["user_id"], name: "index_igeograficos_on_user_id"
  end

  create_table "paisplaces", force: :cascade do |t|
    t.string "imagen"
    t.string "denominacion"
    t.integer "habitantes"
    t.integer "superficie"
    t.bigint "continente_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["continente_id"], name: "index_paisplaces_on_continente_id"
    t.index ["user_id"], name: "index_paisplaces_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "igeograficos", "paisplaces"
  add_foreign_key "igeograficos", "users"
  add_foreign_key "paisplaces", "continentes"
  add_foreign_key "paisplaces", "users"
end
