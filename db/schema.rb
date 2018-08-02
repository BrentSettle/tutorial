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

ActiveRecord::Schema.define(version: 2018_07_31_220208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carriers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "code", limit: 20, null: false
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fedex_shipments", id: false, force: :cascade do |t|
    t.integer "Shipment Date"
    t.text "Service Type"
    t.decimal "Net Charge Amount"
    t.text "Ground Tracking ID Prefix"
    t.decimal "Express or Ground Tracking ID"
    t.text "Delivery Confirmation"
    t.decimal "Actual Weight Amount"
    t.text "Actual Weight Units"
    t.decimal "Rated Weight Amount"
    t.text "Rated Weight Units"
    t.integer "Dim Length"
    t.integer "Dim Width"
    t.integer "Dim Height"
    t.integer "Dim Divisor"
    t.text "Dim Unit"
    t.text "Recipient State"
    t.text "Recipient Zip Code"
    t.text "Recipient Country/Territory"
    t.text "Zone Code"
    t.text "Tracking ID Charge Description 1"
    t.decimal "Tracking ID Charge Amount 1"
    t.text "Tracking ID Charge Description 2"
    t.text "Tracking ID Charge Amount 2"
    t.text "Tracking ID Charge Description 3"
    t.text "Tracking ID Charge Amount 3"
    t.text "Tracking ID Charge Description 4"
    t.text "Tracking ID Charge Amount 4"
    t.text "Tracking ID Charge Description 5"
    t.text "Tracking ID Charge Amount 5"
    t.text "Tracking ID Charge Description 6"
    t.text "Tracking ID Charge Amount 6"
    t.text "Tracking ID Charge Description 7"
    t.text "Tracking ID Charge Amount 7"
    t.text "Tracking ID Charge Description 8"
    t.text "Tracking ID Charge Amount 8"
    t.text "Tracking ID Charge Description 9"
    t.text "Tracking ID Charge Amount 9"
    t.text "Tracking ID Charge Description 10"
    t.text "Tracking ID Charge Amount 10"
    t.text "Tracking ID Charge Description 11"
    t.text "Tracking ID Charge Amount 11"
    t.text "Tracking ID Charge Description 12"
    t.text "Tracking ID Charge Amount 12"
    t.text "Tracking ID Charge Description 13"
    t.text "Tracking ID Charge Amount 13"
    t.text "Tracking ID Charge Description 14"
    t.text "Tracking ID Charge Amount 14"
    t.text "Tracking ID Charge Description 15"
    t.text "Tracking ID Charge Amount 15"
    t.text "Tracking ID Charge Description 16"
    t.text "Tracking ID Charge Amount 16"
    t.text "Tracking ID Charge Description 17"
    t.text "Tracking ID Charge Amount 17"
    t.text "Tracking ID Charge Description 18"
    t.text "Tracking ID Charge Amount 18"
    t.text "Tracking ID Charge Description 19"
    t.text "Tracking ID Charge Amount 19"
    t.text "Tracking ID Charge Description 20"
    t.text "Tracking ID Charge Amount 20"
    t.text "Tracking ID Charge Description 21"
    t.text "Tracking ID Charge Amount 21"
    t.text "Tracking ID Charge Description 22"
    t.text "Tracking ID Charge Amount 22"
    t.text "Tracking ID Charge Description 23"
    t.text "Tracking ID Charge Amount 23"
    t.text "Tracking ID Charge Description 24"
    t.text "Tracking ID Charge Amount 24"
    t.text "Tracking ID Charge Description 25"
    t.text "Tracking ID Charge Amount 25"
  end

  create_table "mynewmodels", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temps", force: :cascade do |t|
    t.string "sku"
    t.string "quantity"
  end

  create_table "upsbilling", force: :cascade do |t|
    t.date "shipping_date"
    t.date "manifest_date"
    t.string "package_id"
    t.string "usps_tracking_number"
    t.string "sequence"
    t.decimal "billed_weight_oz"
    t.string "zip"
    t.string "zone"
    t.string "service"
    t.decimal "ups_mi", precision: 10, scale: 2
    t.decimal "usps", precision: 10, scale: 2
    t.decimal "savings", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
