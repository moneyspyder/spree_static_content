class CreateSpreeSections < ActiveRecord::Migration
  def change
    create_table :spree_sections do |t|
      t.text :content
      t.belongs_to :page
      t.string :identifier

      t.timestamps null: false
    end
  end
end
