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

ActiveRecord::Schema.define(version: 20161218135906) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "title"
    t.text     "text",              limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "article_id"
    t.integer  "language_id"
    t.integer  "form_rules_id"
    t.integer  "presisent_id"
    t.integer  "president_id"
    t.integer  "domain_id"
    t.integer  "rule_id"
    t.integer  "continent_id"
    t.integer  "population_id"
    t.string   "telephone_code_id"
    t.string   "telephoneCode_id"
    t.index ["article_id"], name: "index_articles_on_article_id", using: :btree
    t.index ["continent_id"], name: "index_articles_on_continent_id", using: :btree
    t.index ["domain_id"], name: "index_articles_on_domain_id", using: :btree
    t.index ["form_rules_id"], name: "index_articles_on_form_rules_id", using: :btree
    t.index ["language_id"], name: "index_articles_on_language_id", using: :btree
    t.index ["population_id"], name: "index_articles_on_population_id", using: :btree
    t.index ["president_id"], name: "index_articles_on_president_id", using: :btree
    t.index ["rule_id"], name: "index_articles_on_rule_id", using: :btree
    t.index ["telephoneCode_id"], name: "index_articles_on_telephoneCode_id", using: :btree
  end

  create_table "articles_productions", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "article_id",    null: false
    t.integer "production_id", null: false
  end

  create_table "citizen_ships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "continents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "domains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "alias"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_rules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.boolean  "isArchive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
  end

  create_table "populations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presidents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.text     "description",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sex_id"
    t.integer  "citizen_ship_id"
    t.index ["citizen_ship_id"], name: "index_presidents_on_citizen_ship_id", using: :btree
    t.index ["sex_id"], name: "index_presidents_on_sex_id", using: :btree
  end

  create_table "productions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telephone_codes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",                       null: false
    t.boolean  "role",       default: false, null: false
    t.datetime "reg_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
