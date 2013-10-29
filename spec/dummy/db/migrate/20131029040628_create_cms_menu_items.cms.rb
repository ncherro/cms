# This migration comes from cms (originally 20131025210344)
class CreateCmsMenuItems < ActiveRecord::Migration
  def change
    create_table :cms_menu_items do |t|

      t.belongs_to :menu, index: true

      t.string :title

      t.string :css_id
      t.string :css_class
      t.string :url

      t.timestamps
    end
  end
end
