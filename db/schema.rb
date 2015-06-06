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

ActiveRecord::Schema.define(version: 20150606223456) do

  create_table "employers", force: :cascade do |t|
    t.text     "business_name", limit: 65535
    t.text     "personal_name", limit: 65535
    t.text     "address",       limit: 65535
    t.text     "postcode",      limit: 65535
    t.text     "city",          limit: 65535
    t.integer  "phone",         limit: 4
    t.text     "website",       limit: 65535
    t.text     "email",         limit: 65535
    t.binary   "logo",          limit: 65535
    t.text     "text",          limit: 65535
    t.integer  "status",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "jobseekers", force: :cascade do |t|
    t.text     "business_name", limit: 65535
    t.text     "personal_name", limit: 65535
    t.text     "address",       limit: 65535
    t.text     "postcode",      limit: 65535
    t.text     "city",          limit: 65535
    t.integer  "phone",         limit: 4
    t.text     "website",       limit: 65535
    t.text     "email",         limit: 65535
    t.binary   "photo",         limit: 65535
    t.integer  "experience",    limit: 4
    t.binary   "cv",            limit: 65535
    t.integer  "status",        limit: 4
    t.text     "text",          limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "vacancies", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "text",        limit: 65535
    t.integer  "salary",      limit: 4
    t.text     "salary_type", limit: 65535
    t.text     "schedule",    limit: 65535
    t.binary   "photo",       limit: 65535
    t.text     "city",        limit: 65535
    t.text     "postcode",    limit: 65535
    t.text     "category",    limit: 65535
    t.integer  "status",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
