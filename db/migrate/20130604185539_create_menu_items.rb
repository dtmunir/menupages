class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.decimal :price
      t.integer :menu_id
      t.timestamps
    end
  end
end
