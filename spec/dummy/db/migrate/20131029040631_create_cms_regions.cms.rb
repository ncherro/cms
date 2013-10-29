# This migration comes from cms (originally 20131025211535)
class CreateCmsRegions < ActiveRecord::Migration
  def change
    create_table :cms_regions do |t|

      t.belongs_to :layout, index: true

      t.string :name
      t.string :machine_name, index: true

      t.string :template

      t.string :css_class
      t.string :css_id

      t.timestamps
    end
  end
end
