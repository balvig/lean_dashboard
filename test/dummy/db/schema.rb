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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130502075932) do

  create_table "lean_dashboard_hypotheses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "goal"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "cohort_id"
    t.integer  "indicator_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "lean_dashboard_hypotheses", ["cohort_id"], :name => "index_lean_dashboard_hypotheses_on_cohort_id"
  add_index "lean_dashboard_hypotheses", ["indicator_id"], :name => "index_lean_dashboard_hypotheses_on_indicator_id"

  create_table "lean_dashboard_metrics", :force => true do |t|
    t.string   "description"
    t.text     "code"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
