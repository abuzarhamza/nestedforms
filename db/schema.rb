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

ActiveRecord::Schema.define(version: 20160528190902) do

  create_table "problems", force: :cascade do |t|
    t.string "title"
    t.text   "problem"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "problem_id"
    t.text     "question"
    t.text     "answer"
    t.text     "hint"
    t.datetime "true"
  end

end
