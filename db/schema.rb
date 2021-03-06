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

ActiveRecord::Schema.define(version: 20160615093603) do

  create_table "authors", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "authors", ["email"], name: "index_authors_on_email", unique: true
  add_index "authors", ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true

  create_table "capsules", force: :cascade do |t|
    t.string   "title"
    t.text     "about"
    t.text     "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "author_id"
    t.integer  "profile_id"
  end

  add_index "capsules", ["author_id"], name: "index_capsules_on_author_id"
  add_index "capsules", ["profile_id"], name: "index_capsules_on_profile_id"
  add_index "capsules", ["title"], name: "index_capsules_on_title"

  create_table "collabs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "author_id"
    t.integer  "capsule_id"
  end

  add_index "collabs", ["author_id"], name: "index_collabs_on_author_id"
  add_index "collabs", ["capsule_id"], name: "index_collabs_on_capsule_id"

  create_table "comments", force: :cascade do |t|
    t.string   "comment_content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "author_id"
    t.integer  "capsule_id"
  end

  add_index "comments", ["author_id"], name: "index_comments_on_author_id"
  add_index "comments", ["capsule_id"], name: "index_comments_on_capsule_id"
  add_index "comments", ["comment_content"], name: "index_comments_on_comment_content"

  create_table "mindmaps", force: :cascade do |t|
    t.string   "src"
    t.string   "src_purpose"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "capsule_id"
    t.integer  "profile_id"
  end

  add_index "mindmaps", ["capsule_id"], name: "index_mindmaps_on_capsule_id"
  add_index "mindmaps", ["profile_id"], name: "index_mindmaps_on_profile_id"

  create_table "muses", force: :cascade do |t|
    t.string   "body"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "author_id"
  end

  add_index "muses", ["author_id"], name: "index_muses_on_author_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "about_me"
    t.integer  "zipcode"
    t.date     "date_of_birth"
    t.string   "nationality"
    t.string   "sexe"
    t.string   "state"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "author_id"
  end

  add_index "profiles", ["author_id"], name: "index_profiles_on_author_id"
  add_index "profiles", ["first_name"], name: "index_profiles_on_first_name"
  add_index "profiles", ["last_name"], name: "index_profiles_on_last_name"
  add_index "profiles", ["state"], name: "index_profiles_on_state"
  add_index "profiles", ["zipcode"], name: "index_profiles_on_zipcode"

end
