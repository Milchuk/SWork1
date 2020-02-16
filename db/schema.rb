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

ActiveRecord::Schema.define(version: 20200216124738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "album", force: :cascade do |t|
    t.text "album_title"
    t.date "album_year"
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_album_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.text "artists_alias"
    t.text "first_name"
    t.text "last_name"
    t.date "birthday"
    t.string "sex"
    t.text "artists_site_url"
  end

  create_table "music_lists", force: :cascade do |t|
    t.text "list_title"
    t.integer "songs_num"
    t.bigint "song_id"
    t.index ["song_id"], name: "index_music_lists_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.text "song_title"
    t.time "song_duration"
    t.text "lyrics"
    t.bigint "album_id"
    t.index ["album_id"], name: "index_songs_on_album_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.text "email"
    t.text "password"
    t.date "registration_date"
    t.string "role"
    t.bigint "music_list_id"
    t.index ["music_list_id"], name: "index_users_on_music_list_id"
  end

end
