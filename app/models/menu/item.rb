# frozen_string_literal: true

class Menu::Item < ApplicationRecord
  extend Mobility
  translates :name
  translates :description

  belongs_to :category, class_name: 'Menu::Category', foreign_key: 'menu_category_id'
  has_many :options, class_name: 'Menu::Item::Option', foreign_key: 'menu_item_id', dependent: :destroy
  has_one_attached :image

  default_scope { order(position: :asc) }

  before_save :set_position

  private

  def set_position
    self.position ||= Menu::Item.where(category: category).last&.position.to_i + 1
  end
end
