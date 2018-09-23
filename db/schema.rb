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

ActiveRecord::Schema.define(version: 2018_09_23_143117) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "alerts", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.boolean "dismissed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "screenshot_id"
  end

  create_table "cameras", force: :cascade do |t|
    t.string "name"
    t.integer "station_id"
    t.string "streaming_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cams", force: :cascade do |t|
    t.string "name"
    t.integer "last_shown"
  end

  create_table "points", force: :cascade do |t|
    t.integer "user_id"
    t.integer "amount"
    t.integer "report_id"
  end

  create_table "report_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.boolean "validated", default: false
    t.integer "report_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "station_id"
  end

  create_table "screenshots", force: :cascade do |t|
    t.integer "camera_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0, null: false
    t.string "score"
    t.index ["camera_id"], name: "index_screenshots_on_camera_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "balance"
  end

  create_table "workers", force: :cascade do |t|
    t.integer "station_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
