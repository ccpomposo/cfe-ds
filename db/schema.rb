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

ActiveRecord::Schema.define(version: 20180426002406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.bigint "collaborator_id"
    t.bigint "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collaborator_id"], name: "index_assignments_on_collaborator_id"
    t.index ["status_id"], name: "index_assignments_on_status_id"
  end

  create_table "collaborators", force: :cascade do |t|
    t.string "name"
    t.string "paterno"
    t.string "materno"
    t.bigint "job_id"
    t.bigint "department_id"
    t.date "registration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_collaborators_on_department_id"
    t.index ["job_id"], name: "index_collaborators_on_job_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "assignment_id"
    t.bigint "collaborator_id"
    t.text "comment"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_comments_on_assignment_id"
    t.index ["collaborator_id"], name: "index_comments_on_collaborator_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.bigint "assignment_id"
    t.bigint "collaborator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_permissions_on_assignment_id"
    t.index ["collaborator_id"], name: "index_permissions_on_collaborator_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "collaborators"
  add_foreign_key "assignments", "statuses"
  add_foreign_key "collaborators", "departments"
  add_foreign_key "collaborators", "jobs"
  add_foreign_key "comments", "assignments"
  add_foreign_key "comments", "collaborators"
  add_foreign_key "permissions", "assignments"
  add_foreign_key "permissions", "collaborators"
end
