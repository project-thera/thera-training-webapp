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

ActiveRecord::Schema.define(version: 2021_03_18_013550) do

  create_table "photos", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "stage_id", null: false
    t.string "photo", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stage_id"], name: "index_photos_on_stage_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "stages", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "label", null: false
    t.string "video_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "last_session_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
