class CreateRestaurantNameTranslationsForMobilityColumnBackend < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :name_en, :string
    add_column :restaurants, :name_ge, :string
    add_column :restaurants, :name_ru, :string
  end
end
