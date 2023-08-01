# frozen_string_literal: true

class MenuController < ApplicationController
  def show
    @restaurant = Restaurant.find_by(name: params[:city])
    @order = Order.new(restaurant: @restaurant, table: params[:table])
  end

  private

  def order_params
    params.permit(:city, :table)
  end
end
