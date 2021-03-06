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

ActiveRecord::Schema.define(version: 20131222080940) do

  create_table "bands", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "bands_gigs", id: false, force: true do |t|
    t.integer "band_id"
    t.integer "gig_id"
  end

  create_table "gigs", force: true do |t|
    t.integer  "venue_id"
    t.datetime "start_time"
    t.string   "title"
    t.text     "description"
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "band"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mp3_file_name"
    t.string   "mp3_content_type"
    t.integer  "mp3_file_size"
    t.datetime "mp3_updated_at"
    t.integer  "band_id"
  end

  create_table "venues", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
