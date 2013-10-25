class CreateCmsBlocksRegionOverrides < ActiveRecord::Migration
  def change
    create_table :cms_blocks_region_overrides do |t|
      t.belongs_to :blocks_region, index: true
      t.belongs_to :block, index: true
      t.belongs_to :page, index: true
      t.string :template_override
      t.string :css_id_override
      t.string :css_class_override
      t.integer :position
      t.belongs_to :region, index: true

      t.timestamps
    end
  end
end
