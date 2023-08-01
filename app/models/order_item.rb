class OrderItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order

  validates :quantity, numericality: { greater_than: 0 }
end
