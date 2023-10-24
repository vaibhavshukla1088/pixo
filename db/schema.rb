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

ActiveRecord::Schema[7.0].define(version: 2023_08_16_122012) do
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
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "applyforms", force: :cascade do |t|
    t.string "full_name"
    t.string "email_address"
    t.string "contact_number"
    t.string "position"
    t.string "experience"
    t.string "current_ctc"
    t.string "notice_period"
    t.string "skill"
    t.string "message"
    t.boolean "pixoatic_terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "country"
    t.string "skype"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "footers", force: :cascade do |t|
    t.string "emailId", default: "", null: false
    t.string "skypeId", default: "", null: false
    t.string "behanceLink", default: "#", null: false
    t.string "instagramLink", default: "#", null: false
    t.string "linkedinLink", default: "#", null: false
    t.string "mainheading", default: "", null: false
    t.string "head1", default: "", null: false
    t.string "head1_body1", default: "", null: false
    t.string "head1_body2", default: "", null: false
    t.string "head2", default: "", null: false
    t.string "head2_body", default: "", null: false
    t.string "head3", default: "", null: false
    t.string "head3_body1", default: "", null: false
    t.string "head3_body2", default: "", null: false
    t.string "head3_body3", default: "", null: false
    t.string "head3_body4", default: "", null: false
    t.string "head3_body5", default: "", null: false
    t.string "Contact_heading", default: "", null: false
    t.string "contact_head1", default: "", null: false
    t.string "contact_head1_body1", default: "", null: false
    t.string "contact_head1_body2", default: "", null: false
    t.string "contact_head2", default: "", null: false
    t.string "contact_head2_body1", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "headers", force: :cascade do |t|
    t.string "navbar1", default: "", null: false
    t.string "navbar2", default: "", null: false
    t.string "navbar3", default: "", null: false
    t.string "navbar4", default: "", null: false
    t.string "navbar5", default: "", null: false
    t.string "buttontext", default: "", null: false
    t.string "buttonlink", default: "", null: false
    t.string "iconLink", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_banners", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "description", default: "", null: false
    t.string "buttontext", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_ourworks", force: :cascade do |t|
    t.string "main_title", default: "", null: false
    t.string "main_description", default: "", null: false
    t.string "head1", default: "", null: false
    t.string "title1", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "head2", default: "", null: false
    t.string "title2", default: "", null: false
    t.string "body2", default: "", null: false
    t.string "head3", default: "", null: false
    t.string "title3", default: "", null: false
    t.string "body3", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_services", force: :cascade do |t|
    t.string "mainheading", default: "", null: false
    t.string "head1", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "head2", default: "", null: false
    t.string "body2", default: "", null: false
    t.string "head3", default: "", null: false
    t.string "body3", default: "", null: false
    t.string "head4", default: "", null: false
    t.string "body4", default: "", null: false
    t.string "head5", default: "", null: false
    t.string "body5", default: "", null: false
    t.string "head6", default: "", null: false
    t.string "body6", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_wedos", force: :cascade do |t|
    t.string "main_title", default: "", null: false
    t.string "main_description", default: "", null: false
    t.string "title1", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "title2", default: "", null: false
    t.string "body2", default: "", null: false
    t.string "title3", default: "", null: false
    t.string "body3", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_whyworks", force: :cascade do |t|
    t.string "main_title", default: "", null: false
    t.string "main_description", default: "", null: false
    t.string "title1", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "title2", default: "", null: false
    t.string "body2", default: "", null: false
    t.string "title3", default: "", null: false
    t.string "body3", default: "", null: false
    t.string "title4", default: "", null: false
    t.string "body4", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_openings", force: :cascade do |t|
    t.string "title"
    t.string "one_line_description"
    t.string "employment_type"
    t.string "location"
    t.string "experience_level"
    t.text "brief_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: false
    t.string "updated_by"
  end

  create_table "on_demand_banners", force: :cascade do |t|
    t.string "main_title", default: "", null: false
    t.string "main_description", default: "", null: false
    t.string "head", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "buttontext", default: "", null: false
    t.string "buttonlink", default: "", null: false
    t.string "body2", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "on_demand_formfieldnames", force: :cascade do |t|
    t.string "head1", default: "", null: false
    t.string "head2", default: "", null: false
    t.string "head3", default: "", null: false
    t.string "head4", default: "", null: false
    t.string "head5", default: "", null: false
    t.string "head6", default: "", null: false
    t.string "head7", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "on_demand_forms", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "email", null: false
    t.string "country", null: false
    t.string "skype", default: "", null: false
    t.string "technologies", default: "", null: false
    t.string "resources", default: "", null: false
    t.string "message", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "country_code"
  end

  create_table "on_demand_typesofdevelopers", force: :cascade do |t|
    t.string "main_title", default: "", null: false
    t.string "main_description", default: "", null: false
    t.string "head1", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "head2", default: "", null: false
    t.string "body2", default: "", null: false
    t.string "head3", default: "", null: false
    t.string "body3", default: "", null: false
    t.string "head4", default: "", null: false
    t.string "body4", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "on_demand_whyhires", force: :cascade do |t|
    t.string "main_title", default: "", null: false
    t.string "main_description", default: "", null: false
    t.string "head1", default: "", null: false
    t.string "body1", default: "", null: false
    t.string "head2", default: "", null: false
    t.string "body2", default: "", null: false
    t.string "head3", default: "", null: false
    t.string "body3", default: "", null: false
    t.string "head4", default: "", null: false
    t.string "body4", default: "", null: false
    t.string "head5", default: "", null: false
    t.string "body5", default: "", null: false
    t.string "head6", default: "", null: false
    t.string "body6", default: "", null: false
    t.string "head7", default: "", null: false
    t.string "body7", default: "", null: false
    t.string "head8", default: "", null: false
    t.string "body8", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_banners", force: :cascade do |t|
    t.string "title", default: " ", null: false
    t.string "description", default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_customservices", force: :cascade do |t|
    t.string "heading", default: " ", null: false
    t.string "service_first", default: " ", null: false
    t.string "service_second", default: " ", null: false
    t.string "service_third", default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_industries", force: :cascade do |t|
    t.string "heading", default: " ", null: false
    t.string "description", default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_ourapproaches", force: :cascade do |t|
    t.string "heading1", default: " ", null: false
    t.string "description1", default: " ", null: false
    t.string "heading2", default: " ", null: false
    t.string "description2", default: " ", null: false
    t.string "heading3", default: " ", null: false
    t.string "description3", default: " ", null: false
    t.string "heading4", default: " ", null: false
    t.string "description4", default: " ", null: false
    t.string "heading5", default: " ", null: false
    t.string "description5", default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_ourworks", force: :cascade do |t|
    t.string "heading1", default: " ", null: false
    t.string "description1", default: " ", null: false
    t.string "heading2", default: " ", null: false
    t.string "description2", null: false
    t.string "heading3", default: " ", null: false
    t.string "description3", default: " ", null: false
    t.string "heading4", default: " ", null: false
    t.string "description4", default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_technologies", force: :cascade do |t|
    t.string "heading1", default: " ", null: false
    t.string "description1", default: " ", null: false
    t.string "heading2", default: " ", null: false
    t.string "description2", default: " ", null: false
    t.string "heading3", default: " ", null: false
    t.string "description3", default: " ", null: false
    t.string "heading4", default: " ", null: false
    t.string "description4", default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
