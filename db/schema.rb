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

ActiveRecord::Schema[7.0].define(version: 2022_09_02_151502) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "some_things", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.string "short_description"
    t.boolean "is_hidden", default: false
    t.integer "kind_cd", default: 0
    t.integer "category_id"
    t.decimal "price", precision: 8, scale: 2
    t.text "description"
    t.text "comment"
    t.jsonb "details", default: {}
  end

end
