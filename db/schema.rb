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

ActiveRecord::Schema.define(version: 20161120184648) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "article_id"
    t.integer  "language_id"
    t.integer  "form_rules_id"
    t.integer  "presisent_id"
    t.integer  "president_id"
  end

  add_index "articles", ["article_id"], name: "index_articles_on_article_id", using: :btree
  add_index "articles", ["form_rules_id"], name: "index_articles_on_form_rules_id", using: :btree
  add_index "articles", ["language_id"], name: "index_articles_on_language_id", using: :btree
  add_index "articles", ["president_id"], name: "index_articles_on_president_id", using: :btree

  create_table "citizen_ships", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_rules", force: true do |t|
    t.string   "name"
    t.boolean  "isArchive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
  end

  create_table "presidents", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sex_id"
    t.integer  "citizen_ship_id"
  end

  add_index "presidents", ["citizen_ship_id"], name: "index_presidents_on_citizen_ship_id", using: :btree
  add_index "presidents", ["sex_id"], name: "index_presidents_on_sex_id", using: :btree

  create_table "sexes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                       null: false
    t.boolean  "role",       default: false, null: false
    t.datetime "reg_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
