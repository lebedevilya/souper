class AddPositionToMenuCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_categories, :position, :integer, null: false
    add_column :menu_items, :position, :integer, null: false
  end
end
