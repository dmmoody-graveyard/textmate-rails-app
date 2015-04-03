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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150401165851) do
=======
ActiveRecord::Schema.define(version: 20150402212101) do
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
=======
  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "cell"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts_messages", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "message_id"
  end

>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
  create_table "messages", force: :cascade do |t|
    t.string   "to"
    t.string   "from"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
