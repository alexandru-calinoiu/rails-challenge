# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140310144943) do

  create_table "customers", force: true do |t|
    t.string   "first_name", limit: 90
    t.string   "last_name",  limit: 90
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.boolean  "paid",                                           default: false
    t.decimal  "amount",                precision: 11, scale: 2, default: 0.0
    t.string   "currency",    limit: 3,                          default: "usd"
    t.boolean  "refunded",                                       default: false
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["customer_id"], name: "index_transactions_on_customer_id"

end
