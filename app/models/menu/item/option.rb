class Menu::Item::Option < ApplicationRecord
  belongs_to :item, class_name: 'Menu::Item', foreign_key: 'menu_item_id'
end
