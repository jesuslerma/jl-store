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

ActiveRecord::Schema.define(version: 20160924164834) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "external_number"
    t.string   "country"
    t.string   "neighborhood"
    t.string   "cp"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "transaction_id"
    t.string   "payment_type"
    t.float    "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "payments", ["order_id"], name: "index_payments_on_order_id"
  add_index "payments", ["transaction_id"], name: "index_payments_on_transaction_id"

  create_table "products", force: :cascade do |t|
    t.float    "price"
    t.string   "name"
    t.integer  "qty"
    t.string   "description"
    t.integer  "category_id"
    t.integer  "product_type"
    t.integer  "vendor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["product_type"], name: "index_products_on_product_type"
  add_index "products", ["vendor_id"], name: "index_products_on_vendor_id"

  create_table "shippings", force: :cascade do |t|
    t.string   "region"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vendors", ["category_id"], name: "index_vendors_on_category_id"

end
