# frozen_string_literal: true

class Menu::Item::Option < ApplicationRecord
  extend Mobility
  translates :name

  belongs_to :item, class_name: 'Menu::Item', foreign_key: 'menu_item_id'
end
