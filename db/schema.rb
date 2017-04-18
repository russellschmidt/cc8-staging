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

ActiveRecord::Schema.define(version: 20170406195606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.text     "description"
    t.integer  "dollar_goal_in_cents"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "co2_per_dollar"
    t.boolean  "active"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "city"
    t.string   "state"
    t.index ["project_id"], name: "index_campaigns_on_project_id", using: :btree
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "code"
    t.string   "free_trial_length"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.string   "stripe_customer_id"
    t.integer  "total_in_cents"
    t.integer  "tip_in_cents"
    t.integer  "campaign_donation_in_cents"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "stripe_email"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "countryCode"
    t.index ["campaign_id"], name: "index_donations_on_campaign_id", using: :btree
    t.index ["user_id"], name: "index_donations_on_user_id", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.string   "aws_url"
    t.integer  "partner_id"
    t.boolean  "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_images_on_partner_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "name"
    t.text     "blurb"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "news"
    t.text     "volunteer"
    t.index ["location_id"], name: "index_partners_on_location_id", using: :btree
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.string   "stripe_id"
    t.float    "price"
    t.string   "interval"
    t.text     "features"
    t.boolean  "highlight"
    t.integer  "display_order"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "blurb"
    t.text     "description"
    t.integer  "partner_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "science"
    t.string   "overview_headline"
    t.string   "science_headline"
    t.string   "news_headline"
    t.string   "volunteer_headline"
    t.string   "videoUrl"
    t.string   "slug"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "hero_image_file_name"
    t.string   "hero_image_content_type"
    t.integer  "hero_image_file_size"
    t.datetime "hero_image_updated_at"
    t.string   "small_image_file_name"
    t.string   "small_image_content_type"
    t.integer  "small_image_file_size"
    t.datetime "small_image_updated_at"
    t.index ["partner_id"], name: "index_projects_on_partner_id", using: :btree
    t.index ["slug"], name: "index_projects_on_slug", unique: true, using: :btree
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "stripe_id"
    t.integer  "plan_id"
    t.string   "last_four"
    t.integer  "coupon_id"
    t.string   "card_type"
    t.float    "current_price"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.string   "name"
    t.string   "zip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "campaigns", "projects"
  add_foreign_key "donations", "campaigns"
  add_foreign_key "donations", "users"
  add_foreign_key "images", "partners"
  add_foreign_key "partners", "locations"
  add_foreign_key "projects", "partners"
end
