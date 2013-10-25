class CreateCmsLayouts < ActiveRecord::Migration
  def change
    create_table :cms_layouts do |t|
      t.string :name
      t.string :machine_name
      t.string :template

      t.timestamps
    end
  end
end
