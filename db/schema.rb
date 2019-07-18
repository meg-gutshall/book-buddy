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

ActiveRecord::Schema.define(version: 2019_07_17_201402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.bigint "library_id"
    t.string "title"
    t.string "author"
    t.string "genre"
    t.integer "copies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "borrows", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "book_id"
    t.string "due_date"
    t.boolean "renewed"
    t.boolean "returned"
    t.boolean "overdue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_borrows_on_book_id"
    t.index ["student_id"], name: "index_borrows_on_student_id"
  end

  create_table "holds", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "book_id"
    t.boolean "available"
    t.boolean "borrowed"
    t.boolean "cancelled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_holds_on_book_id"
    t.index ["student_id"], name: "index_holds_on_student_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.bigint "school_id"
    t.integer "room_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_libraries_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.bigint "admin_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_schools_on_admin_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "school_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["school_id"], name: "index_students_on_school_id"
  end

end
