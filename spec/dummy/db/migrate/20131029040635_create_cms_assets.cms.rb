# This migration comes from cms (originally 20131025212133)
class CreateCmsAssets < ActiveRecord::Migration
  def change
    create_table :cms_assets do |t|

      t.references :assetable, polymorphic: true, index: true

      t.string :type, index: true

      t.string :file_uid
      t.string :file_name

      t.string :alt
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
