# This migration comes from cms (originally 20131025210922)
class CreateCmsLayouts < ActiveRecord::Migration
  def change
    create_table :cms_layouts do |t|

      t.string :name
      t.string :machine_name, index: true
      t.string :template

      t.timestamps
    end
  end
end
