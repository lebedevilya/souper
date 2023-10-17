class CreateMenuItemDescriptionTranslationsForMobilityColumnBackend < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_items, :description_en, :string
    add_column :menu_items, :description_ge, :string
    add_column :menu_items, :description_ru, :string
  end
end
