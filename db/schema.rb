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

ActiveRecord::Schema.define(version: 20170424190413) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "grade_final"
    t.integer  "alumn_id"
    t.integer  "subject_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["alumn_id"], name: "index_grades_on_alumn_id"
    t.index ["subject_id"], name: "index_grades_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "cpf"
    t.string   "registry"
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "type"
    t.integer  "parent_id"
    t.integer  "classroom_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["classroom_id"], name: "index_users_on_classroom_id"
    t.index ["parent_id"], name: "index_users_on_parent_id"
  end

end
