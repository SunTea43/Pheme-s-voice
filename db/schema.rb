# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_10_12_235302) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "opinion_columns", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "author_name"
    t.datetime "publish_date"
    t.bigint "podcast_episode_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["podcast_episode_id"], name: "index_opinion_columns_on_podcast_episode_id"
  end

  create_table "podcast_episodes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "publish_date"
    t.string "episode_url"
    t.integer "duration"
    t.text "show_notes"
    t.text "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "opinion_columns", "podcast_episodes"
end
