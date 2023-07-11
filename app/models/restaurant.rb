class Restaurant < ApplicationRecord
  has_many :menu_categories, dependent: :destroy, class_name: 'Menu::Category'
end
