class CreateMenuCategoryNameTranslationsForMobilityColumnBackend < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_categories, :name_en, :string
    add_column :menu_categories, :name_ge, :string
    add_column :menu_categories, :name_ru, :string
  end
end
