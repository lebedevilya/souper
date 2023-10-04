class OfficeController < ApplicationController
  def show
    @restaurant = Restaurant.find_by(name: 'tbilisi')
    @order = Order.find_or_create_by(restaurant: @restaurant, table: 0, created_at: Time.zone.today.all_day)
  end
end
