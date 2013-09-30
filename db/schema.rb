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

ActiveRecord::Schema.define(:version => 20130927190006) do

  create_table "cec_complaint_files", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "cec_complaint_id"
    t.string   "field_type"
  end

  create_table "cec_complaints", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cec_observer"
    t.string   "cec_observer_address"
    t.string   "cec_observer_phone"
    t.string   "cec_violation_type"
    t.datetime "cec_violated_at"
    t.text     "cec_violation_desc"
    t.text     "cec_witness_info"
    t.text     "cec_violator_info"
    t.text     "cec_additional_info"
    t.string   "cec_author"
    t.string   "cec_author_phone"
    t.datetime "cec_written_at"
    t.string   "cec_request"
    t.datetime "cec_answered_at"
    t.string   "cec_result"
    t.boolean  "cec_appeal"
    t.text     "cec_decision_basis"
    t.string   "appellate_author"
    t.string   "appellate_author_phone"
    t.string   "appellate_name"
    t.datetime "appellate_written_at"
    t.string   "appellate_request"
    t.datetime "appellate_answered_at"
    t.string   "appellate_result"
    t.text     "appellate_decision_basis"
    t.text     "appellate_additional_info"
    t.integer  "election_id"
  end

  create_table "dec_complaint_files", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "dec_complaint_id"
    t.string   "field_type"
  end

  create_table "dec_complaints", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dec_observer"
    t.string   "dec_observer_address"
    t.string   "dec_observer_phone"
    t.string   "dec_district_name"
    t.string   "dec_violation_type"
    t.datetime "dec_violated_at"
    t.text     "dec_violation_desc"
    t.text     "dec_witness_info"
    t.text     "dec_violator_info"
    t.text     "dec_additional_info"
    t.string   "dec_author"
    t.string   "dec_author_phone"
    t.datetime "dec_written_at"
    t.string   "dec_request"
    t.datetime "dec_answered_at"
    t.string   "dec_result"
    t.boolean  "dec_appeal"
    t.text     "dec_decision_basis"
    t.string   "cec_author"
    t.string   "cec_author_phone"
    t.datetime "cec_written_at"
    t.string   "cec_request"
    t.datetime "cec_answered_at"
    t.string   "cec_result"
    t.boolean  "cec_appeal"
    t.text     "cec_decision_basis"
    t.text     "cec_additional_info"
    t.string   "appellate_author"
    t.string   "appellate_author_phone"
    t.string   "appellate_name"
    t.datetime "appellate_written_at"
    t.string   "appellate_request"
    t.datetime "appellate_answered_at"
    t.string   "appellate_result"
    t.text     "appellate_decision_basis"
    t.text     "appellate_additional_info"
    t.integer  "election_id"
  end

  create_table "elections", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pec_complaint_files", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "pec_complaint_id"
    t.string   "field_type"
  end

  create_table "pec_complaints", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pec_observer"
    t.string   "pec_observer_address"
    t.string   "pec_observer_phone"
    t.string   "pec_district_name"
    t.string   "pec_precinct_number"
    t.string   "pec_violation_period"
    t.string   "pec_violation_type"
    t.datetime "pec_violated_at"
    t.text     "pec_violation_desc"
    t.text     "pec_witness_info"
    t.text     "pec_violator_info"
    t.text     "pec_additional_info"
    t.string   "pec_author"
    t.string   "pec_author_phone"
    t.datetime "pec_written_at"
    t.string   "pec_request"
    t.datetime "pec_answered_at"
    t.string   "pec_result"
    t.boolean  "pec_appeal"
    t.text     "pec_decision_basis"
    t.string   "dec_author"
    t.string   "dec_author_phone"
    t.datetime "dec_written_at"
    t.string   "dec_request"
    t.datetime "dec_answered_at"
    t.string   "dec_result"
    t.boolean  "dec_appeal"
    t.text     "dec_decision_basis"
    t.text     "dec_additional_info"
    t.string   "court_author"
    t.string   "court_author_phone"
    t.string   "court_name"
    t.datetime "court_written_at"
    t.string   "court_request"
    t.datetime "court_answered_at"
    t.string   "court_result"
    t.boolean  "court_appeal"
    t.text     "court_decision_basis"
    t.text     "court_additional_info"
    t.string   "appellate_author"
    t.string   "appellate_author_phone"
    t.string   "appellate_name"
    t.datetime "appellate_written_at"
    t.string   "appellate_request"
    t.datetime "appellate_answered_at"
    t.string   "appellate_result"
    t.text     "appellate_decision_basis"
    t.text     "appellate_additional_info"
    t.integer  "election_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.integer  "role",                   :default => 0,  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
