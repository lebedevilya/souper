class Menu::Item < ApplicationRecord
  belongs_to :category, class_name: 'Menu::Category', foreign_key: 'menu_category_id'
  has_one_attached :image
end
