class CreateMenuItemNameTranslationsForMobilityColumnBackend < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_items, :name_en, :string
    add_column :menu_items, :name_ge, :string
    add_column :menu_items, :name_ru, :string
  end
end
