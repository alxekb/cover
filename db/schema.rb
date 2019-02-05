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

ActiveRecord::Schema.define(version: 2019_02_05_091636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bloggers", force: :cascade do |t|
    t.string "social_network"
    t.bigint "followers"
    t.string "account_name"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.text "idea"
    t.text "purpose"
    t.text "description"
    t.bigint "blogger_id"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blogger_id"], name: "index_offers_on_blogger_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "brand"
    t.string "author"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.text "problem"
    t.text "solution"
    t.bigint "offers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offers_id"], name: "index_solutions_on_offers_id"
  end

  add_foreign_key "offers", "bloggers"
end
