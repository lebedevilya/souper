class OrderItem < ApplicationRecord
  belongs_to :item, class_name: 'Menu::Item', foreign_key: 'menu_item_id'
  belongs_to :order

  validates :quantity, numericality: { greater_than: 0 }
end
