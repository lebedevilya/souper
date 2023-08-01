# frozen_string_literal: true

class MenuController < ApplicationController
  def show
    @order = Order.new(table: params[:table].to_i)
    @restaurant = Restaurant.find_by(name: params[:city])
    @order = Order.new(restaurant: @restaurant)
  end

  def create_order
    @order = Order.new(order_params)

    if @order.save
      redirect_to order_url(@order), notice: 'Order was successfully created.'
    else
      redirect_to "menu/#{@order.restaurant.name}", status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:restaurant_id, ordered_items_attributes: [:item_id, :quantity])
  end
end
