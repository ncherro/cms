class CreateCmsMenus < ActiveRecord::Migration
  def change
    create_table :cms_menus do |t|
      t.string :name
      t.string :machine_name

      t.timestamps
    end
  end
end
