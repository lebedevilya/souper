class CreateMenuItemOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_item_options do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
