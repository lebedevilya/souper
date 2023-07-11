class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :name, null: false
      t.decimal :price, null: false
      t.boolean :availability, default: true

      t.references :menu_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
