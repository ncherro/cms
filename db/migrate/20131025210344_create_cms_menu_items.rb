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
