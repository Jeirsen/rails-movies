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

ActiveRecord::Schema.define(version: 2019_07_24_005707) do

  create_table "movie_books", force: :cascade do |t|
    t.integer "movie_id"
    t.datetime "presentation_date"
    t.string "client_identification"
    t.string "client_name"
    t.string "email"
    t.string "cell_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_books_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "poster_url"
    t.datetime "init_presentation"
    t.datetime "end_presentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
