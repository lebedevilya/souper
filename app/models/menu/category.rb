class Menu::Category < ApplicationRecord
  belongs_to :restaurant
  has_many :items, dependent: :destroy, class_name: 'Menu::Item', foreign_key: "menu_category_id"
end
