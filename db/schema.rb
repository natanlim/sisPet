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

ActiveRecord::Schema.define(version: 20160927180845) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "zip"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.string   "breed"
    t.string   "obs"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
  end

  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id"

  create_table "products", force: :cascade do |t|
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "relationships", ["product_id"], name: "index_relationships_on_product_id"
  add_index "relationships", ["service_id"], name: "index_relationships_on_service_id"

  create_table "services", force: :cascade do |t|
    t.text     "description"
    t.integer  "customer_id"
    t.decimal  "price"
    t.integer  "pet_id"
    t.text     "obs"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "services", ["customer_id"], name: "index_services_on_customer_id"
  add_index "services", ["pet_id"], name: "index_services_on_pet_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
