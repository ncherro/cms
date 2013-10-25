class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|

      t.belongs_to :menu_item, index: true

      t.string :title
      t.text :body

      t.string :meta_title
      t.string :meta_keywords
      t.text :meta_description

      t.timestamps
    end
  end
end
