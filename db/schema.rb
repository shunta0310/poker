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

ActiveRecord::Schema[7.2].define(version: 2025_11_03_113640) do
  create_table "tweets", force: :cascade do |t|
    t.string "shurui"
    t.string "rate"
    t.integer "ninnzuu"
    t.string "position"
    t.string "myhand"
    t.string "suit"
    t.string "mark"
    t.string "frop1"
    t.string "frop2"
    t.string "frop3"
    t.string "turn"
    t.string "river"
    t.string "turn1"
    t.string "turn2"
    t.string "turn3"
    t.string "turn4"
    t.string "action1"
    t.string "action2"
    t.string "action3"
    t.string "action4"
    t.string "action5"
    t.string "action6"
    t.string "action7"
    t.string "action8"
    t.string "action9"
    t.string "action10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.text "body"
    t.string "frop1m"
    t.string "frop2m"
    t.string "frop3m"
    t.string "turnm"
    t.string "riverm"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "profile"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
