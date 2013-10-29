# This migration comes from cms (originally 20131025211637)
class CreateCmsBlocks < ActiveRecord::Migration
  def change
    create_table :cms_blocks do |t|
      t.string :type, index: true

      t.text :content
      t.string :name
      t.string :machine_name, index: true
      t.string :template

      t.integer :menu_block_type
      t.belongs_to :spree_menu, index: true
      t.belongs_to :spree_menu_item, index: true

      t.timestamps
    end
  end
end
