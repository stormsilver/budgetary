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

ActiveRecord::Schema.define(version: 20150221223320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name",                                     null: false
    t.decimal  "starting_amount", precision: 16, scale: 2, null: false
    t.integer  "month_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "accounts", ["month_id"], name: "index_accounts_on_month_id", using: :btree

  create_table "buckets", force: :cascade do |t|
    t.string   "name",                                     null: false
    t.decimal  "starting_amount", precision: 16, scale: 2, null: false
    t.decimal  "budget_amount",   precision: 16, scale: 2, null: false
    t.integer  "month_id",                                 null: false
    t.integer  "category_id",                              null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "buckets", ["month_id"], name: "index_buckets_on_month_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "month_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["month_id"], name: "index_categories_on_month_id", using: :btree

  create_table "line_items", force: :cascade do |t|
    t.decimal  "amount",      precision: 16, scale: 2, null: false
    t.string   "description",                          null: false
    t.integer  "month_id",                             null: false
    t.integer  "account_id",                           null: false
    t.integer  "user_id",                              null: false
    t.integer  "owner_id"
    t.string   "owner_type"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "line_items", ["account_id"], name: "index_line_items_on_account_id", using: :btree
  add_index "line_items", ["month_id"], name: "index_line_items_on_month_id", using: :btree

  create_table "months", force: :cascade do |t|
    t.date     "date",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "months", ["date"], name: "index_months_on_date", using: :btree

  create_table "paychecks", force: :cascade do |t|
    t.string   "name",                                    null: false
    t.decimal  "planned_amount", precision: 16, scale: 2, null: false
    t.integer  "month_id",                                null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "paychecks", ["month_id"], name: "index_paychecks_on_month_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
