# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131029040635) do

  create_table "cms_assets", force: true do |t|
    t.integer  "assetable_id"
    t.string   "assetable_type"
    t.string   "type"
    t.string   "file_uid"
    t.string   "file_name"
    t.string   "alt"
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_assets", ["assetable_id", "assetable_type"], name: "index_cms_assets_on_assetable_id_and_assetable_type", using: :btree

  create_table "cms_blocks", force: true do |t|
    t.string   "type"
    t.text     "content"
    t.string   "name"
    t.string   "machine_name"
    t.string   "template"
    t.integer  "menu_block_type"
    t.integer  "spree_menu_id"
    t.integer  "spree_menu_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_blocks", ["spree_menu_id"], name: "index_cms_blocks_on_spree_menu_id", using: :btree
  add_index "cms_blocks", ["spree_menu_item_id"], name: "index_cms_blocks_on_spree_menu_item_id", using: :btree

  create_table "cms_blocks_region_overrides", force: true do |t|
    t.integer  "blocks_region_id"
    t.integer  "block_id"
    t.integer  "page_id"
    t.string   "template_override"
    t.string   "css_id_override"
    t.string   "css_class_override"
    t.integer  "position"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_blocks_region_overrides", ["block_id"], name: "index_cms_blocks_region_overrides_on_block_id", using: :btree
  add_index "cms_blocks_region_overrides", ["blocks_region_id"], name: "index_cms_blocks_region_overrides_on_blocks_region_id", using: :btree
  add_index "cms_blocks_region_overrides", ["page_id"], name: "index_cms_blocks_region_overrides_on_page_id", using: :btree
  add_index "cms_blocks_region_overrides", ["region_id"], name: "index_cms_blocks_region_overrides_on_region_id", using: :btree

  create_table "cms_blocks_regions", force: true do |t|
    t.integer  "block_id"
    t.integer  "region_id"
    t.integer  "position"
    t.string   "template_override"
    t.string   "css_class"
    t.string   "css_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_blocks_regions", ["block_id"], name: "index_cms_blocks_regions_on_block_id", using: :btree
  add_index "cms_blocks_regions", ["region_id"], name: "index_cms_blocks_regions_on_region_id", using: :btree

  create_table "cms_layouts", force: true do |t|
    t.string   "name"
    t.string   "machine_name"
    t.string   "template"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_menu_items", force: true do |t|
    t.integer  "menu_id"
    t.string   "title"
    t.string   "css_id"
    t.string   "css_class"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_menu_items", ["menu_id"], name: "index_cms_menu_items_on_menu_id", using: :btree

  create_table "cms_menus", force: true do |t|
    t.string   "name"
    t.string   "machine_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_pages", force: true do |t|
    t.integer  "menu_item_id"
    t.string   "title"
    t.text     "body"
    t.string   "meta_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_pages", ["menu_item_id"], name: "index_cms_pages_on_menu_item_id", using: :btree

  create_table "cms_regions", force: true do |t|
    t.integer  "layout_id"
    t.string   "name"
    t.string   "machine_name"
    t.string   "template"
    t.string   "css_class"
    t.string   "css_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_regions", ["layout_id"], name: "index_cms_regions_on_layout_id", using: :btree

end
