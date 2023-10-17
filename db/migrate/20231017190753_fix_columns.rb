class FixColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :menu_items, :description_en, :text
    change_column :menu_items, :description_ge, :text
    change_column :menu_items, :description_ru, :text
  end
end
