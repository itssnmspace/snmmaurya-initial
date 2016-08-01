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

ActiveRecord::Schema.define(version: 20160801090702) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.boolean  "status",      default: true
    t.boolean  "featured",    default: false
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "book_contents", force: :cascade do |t|
    t.text     "title"
    t.text     "description"
    t.integer  "book_id"
    t.boolean  "status",      default: true
    t.string   "slug"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "status",      default: true
    t.string   "slug"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "status",      default: true
    t.integer  "blog_id"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["blog_id"], name: "index_comments_on_blog_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "contact"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "cource"
    t.string   "college"
    t.string   "location"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.boolean  "status",       default: true
    t.integer  "position"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "about"
    t.string   "url"
    t.string   "started_at"
    t.string   "end_at"
    t.integer  "user_id"
    t.string   "role",       default: "Software Engineer"
    t.boolean  "status",     default: true
    t.integer  "position"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "image_assets", force: :cascade do |t|
    t.string   "code"
    t.string   "title"
    t.string   "action"
    t.string   "target"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.boolean  "status",            default: true
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "url"
    t.string   "tools"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "status",      default: true
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems", force: :cascade do |t|
    t.text     "title"
    t.string   "description"
    t.integer  "topic_id"
    t.boolean  "featured",    default: true
    t.boolean  "correct",     default: true
    t.integer  "position"
    t.boolean  "status",      default: true
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["topic_id"], name: "index_problems_on_topic_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact"
    t.string   "email"
    t.text     "about"
    t.string   "address_line_one"
    t.string   "address_line_two"
    t.string   "address_line_three"
    t.string   "city"
    t.string   "state"
    t.string   "pin_code"
    t.string   "my_country"
    t.integer  "user_id"
    t.boolean  "status",             default: true
    t.integer  "position"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "about"
    t.text     "description"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.integer  "user_id"
    t.integer  "employment_id"
    t.boolean  "status",        default: true
    t.integer  "position"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.boolean  "status",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.text     "title"
    t.string   "description"
    t.integer  "problem_id"
    t.boolean  "correct",     default: true
    t.integer  "position"
    t.boolean  "status",      default: true
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["problem_id"], name: "index_solutions_on_problem_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "experience"
    t.string   "experience_level"
    t.integer  "technology_type_id"
    t.integer  "user_id"
    t.boolean  "status",             default: true
    t.integer  "position"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "technology_types", force: :cascade do |t|
    t.string   "title"
    t.boolean  "status",     default: true
    t.integer  "position"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "position"
    t.boolean  "status",      default: true
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_problems", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "problem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["problem_id"], name: "index_user_problems_on_problem_id"
    t.index ["user_id"], name: "index_user_problems_on_user_id"
  end

  create_table "user_solutions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "solution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["solution_id"], name: "index_user_solutions_on_solution_id"
    t.index ["user_id"], name: "index_user_solutions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "slug",                   default: "", null: false
    t.string   "contact"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["slug"], name: "index_users_on_slug", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
