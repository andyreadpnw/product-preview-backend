# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_09_022312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alt_images", force: :cascade do |t|
    t.string "image_url"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_alt_images_on_product_id"
  end

  create_table "product_loads", force: :cascade do |t|
    t.string "product_load_name"
    t.date "product_load_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_logs", force: :cascade do |t|
    t.integer "parent_id"
    t.string "product_name"
    t.integer "style_id"
    t.integer "department"
    t.string "status"
    t.string "priority"
    t.string "issue_type"
    t.string "issue_class"
    t.string "site"
    t.string "division"
    t.string "environment"
    t.string "log_body"
    t.string "assigned"
    t.string "cc"
    t.date "date_due"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_logs_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "parent_id"
    t.string "name"
    t.integer "department"
    t.integer "style_id"
    t.integer "color_id"
    t.string "product_copy"
    t.string "product_main_image"
    t.string "fit"
    t.string "fabrication"
    t.string "style_type"
    t.bigint "product_load_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_load_id"], name: "index_products_on_product_load_id"
  end

  add_foreign_key "alt_images", "products"
  add_foreign_key "product_logs", "products"
  add_foreign_key "products", "product_loads"
end
