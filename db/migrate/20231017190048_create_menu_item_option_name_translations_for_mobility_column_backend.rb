class CreateMenuItemOptionNameTranslationsForMobilityColumnBackend < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_item_options, :name_en, :string
    add_column :menu_item_options, :name_ge, :string
    add_column :menu_item_options, :name_ru, :string
  end
end
