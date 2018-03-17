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

ActiveRecord::Schema.define(version: 20180317105530) do

  create_table "blocks", force: :cascade do |t|
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encriptions", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_encriptions_on_user_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_labels_on_user_id"
  end

  create_table "txns", force: :cascade do |t|
    t.string "txnid"
    t.string "from"
    t.integer "block_id"
    t.string "label"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_txns_on_block_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "address"
    t.integer "block_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_users_on_block_id"
  end

end
