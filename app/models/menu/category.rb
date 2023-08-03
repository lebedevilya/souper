# frozen_string_literal: true

class Menu::Category < ApplicationRecord
  belongs_to :restaurant
  has_many :items, dependent: :destroy, class_name: 'Menu::Item', foreign_key: 'menu_category_id'

  default_scope { order(position: :asc) }

  before_save :set_position

  private

  def set_position
    self.position ||= Menu::Category.where(restaurant: restaurant).last&.position.to_i + 1
  end
end
