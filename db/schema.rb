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

ActiveRecord::Schema.define(version: 2019_01_30_210935) do

  create_table "accounting_transaction_types", force: :cascade do |t|
    t.string "transaction_type_code"
    t.string "description"
  end

  create_table "accounting_transactions", force: :cascade do |t|
    t.date "transaction_date"
    t.date "entry_date"
    t.string "description"
    t.string "transaction_type_code"
    t.integer "to_party_id"
    t.integer "from_party_id"
    t.integer "from_org_party_id"
  end

  create_table "general_ledger_accounts", force: :cascade do |t|
    t.string "account_code", null: false
    t.string "name", null: false
    t.string "description", null: false
    t.string "acc_type_code", null: false
    t.index ["account_code"], name: "index_general_ledger_accounts_on_account_code"
  end

  create_table "gl_account_types", force: :cascade do |t|
    t.string "acc_type_code"
    t.string "classification"
  end

  create_table "organization_gl_accounts", force: :cascade do |t|
    t.integer "party_id"
    t.date "from_date"
    t.date "to_date"
    t.integer "gl_account_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "party_type"
    t.string "name"
    t.string "last_name"
    t.string "first_name"
  end

  create_table "transaction_details", force: :cascade do |t|
    t.integer "detail_seq"
    t.integer "amount"
    t.string "debit_credit_flag"
    t.integer "party_id"
    t.integer "gl_account_id"
    t.integer "parent_transaction_id"
    t.integer "parent_detail_seq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
