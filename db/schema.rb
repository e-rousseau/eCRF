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

ActiveRecord::Schema.define(version: 20170830055238) do

  create_table "centres", force: :cascade do |t|
    t.string   "centre_code"
    t.text     "centre_name"
    t.integer  "study_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["study_id"], name: "index_centres_on_study_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string   "form_code"
    t.text     "form_name"
    t.integer  "study_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["study_id"], name: "index_forms_on_study_id"
  end

  create_table "studies", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
