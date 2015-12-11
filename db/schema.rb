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

ActiveRecord::Schema.define(version: 20151203002321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answered_questionnaires", force: :cascade do |t|
    t.string   "questioned"
    t.string   "profile"
    t.text     "conclusions"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "questionnaire_id"
  end

  add_index "answered_questionnaires", ["questionnaire_id"], name: "index_answered_questionnaires_on_questionnaire_id", using: :btree

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answered_questionnaire_id"
    t.text     "value"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "answers", ["answered_questionnaire_id"], name: "index_answers_on_answered_questionnaire_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "questionnaires", force: :cascade do |t|
    t.string   "name"
    t.integer  "state"
    t.datetime "close_at"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questionnaires", ["user_id"], name: "index_questionnaires_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "questionnaire_id"
  end

  add_index "questions", ["questionnaire_id"], name: "index_questions_on_questionnaire_id", using: :btree

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
    t.string   "full_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "answered_questionnaires", "questionnaires"
  add_foreign_key "answers", "answered_questionnaires"
  add_foreign_key "answers", "questions"
  add_foreign_key "questionnaires", "users"
  add_foreign_key "questions", "questionnaires"
end
