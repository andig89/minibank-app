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

ActiveRecord::Schema.define(version: 20130422103248) do

  create_table "accounts", force: true do |t|
    t.integer  "client_id",              null: false
    t.integer  "number",                 null: false
    t.integer  "balance",    default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["client_id"], name: "index_accounts_on_client_id"

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "transactions", force: true do |t|
    t.integer  "account_id", null: false
    t.integer  "amount",     null: false
    t.string   "descr",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["account_id"], name: "index_transactions_on_account_id"

end
