class CreateCmsBlocksRegions < ActiveRecord::Migration
  def change
    create_table :cms_blocks_regions do |t|
      t.belongs_to :block, index: true
      t.belongs_to :region, index: true
      t.integer :position
      t.string :template_override
      t.string :css_class
      t.string :css_id

      t.timestamps
    end
  end
end
