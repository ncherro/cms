class CreateCmsBlocks < ActiveRecord::Migration
  def change
    create_table :cms_blocks do |t|
      t.text :content
      t.string :name
      t.string :machine_name
      t.string :template

      t.timestamps
    end
  end
end
