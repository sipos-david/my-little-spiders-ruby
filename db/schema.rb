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

ActiveRecord::Schema[7.1].define(version: 2023_12_09_111047) do
  create_table "entries", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.date "date", null: false
    t.string "text", null: false
    t.integer "respect_gained", null: false
    t.bigint "roommate_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roommate_id"], name: "index_entries_on_roommate_id"
  end

  create_table "roommates", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.integer "num_of_nightmares", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.check_constraint "`num_of_nightmares` >= 0", name: "num_of_nightmares_check"
  end

  add_foreign_key "entries", "roommates"
end
