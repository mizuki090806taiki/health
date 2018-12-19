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

ActiveRecord::Schema.define(version: 20181219023301) do

  create_table "byouketus", force: :cascade do |t|
    t.string "riyuu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.date "hiduke"
    t.integer "gakunenn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gakunenns", force: :cascade do |t|
    t.integer "gakunenn"
    t.integer "kumi"
    t.integer "ninnzuu"
    t.integer "nenndo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hokensitu_usesheets", force: :cascade do |t|
    t.integer "seito_id"
    t.datetime "raishitu_time"
    t.boolean "bukatu_flg"
    t.string "bukatu"
    t.string "kyoka"
    t.string "kyokatannin"
    t.string "naika_riyuu_sonota"
    t.string "geka_riyuu_sonota"
    t.string "geka_detail_bui"
    t.string "geka_detail_time"
    t.string "geka_detail_place"
    t.text "geka_detail"
    t.string "bad_start"
    t.integer "bad_jigen"
    t.string "taion"
    t.string "myakuhaku"
    t.string "ketuatu"
    t.string "howdo_sonota"
    t.datetime "sleep"
    t.datetime "wakeup"
    t.boolean "good_sleep"
    t.boolean "breakfast"
    t.boolean "defecation"
    t.boolean "worry"
    t.string "worry_sonota"
    t.datetime "go_class"
    t.datetime "go_rest_from"
    t.datetime "go_rest_to"
    t.integer "go_rest_jigen_from"
    t.integer "go_rest_jigen_to"
    t.datetime "go_home"
    t.string "go_home_tel"
    t.datetime "go_hospital"
    t.string "go_hospital_name"
    t.boolean "go_consultation"
    t.text "go_sonota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kaunsering_schedules", force: :cascade do |t|
    t.datetime "yoyakuzikan"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kaunseringu_yoyakus", force: :cascade do |t|
    t.integer "kaunsering_schedule_id"
    t.integer "seito_id"
    t.text "memo"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kennkoukirokus", force: :cascade do |t|
    t.date "hiduke"
    t.boolean "kesseki"
    t.integer "byouketu_id"
    t.string "zikoketu"
    t.string "syuttei"
    t.string "tikoku_id"
    t.string "kibiki"
    t.integer "gakunenn_id"
    t.integer "seito_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seitos", force: :cascade do |t|
    t.integer "gakunenn_id"
    t.integer "banngou"
    t.string "seibetu"
    t.string "simei"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tikokus", force: :cascade do |t|
    t.string "riyuu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "banngou"
    t.string "password_digest"
    t.string "remember_token"
    t.integer "kengen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
