# frozen_string_literal: true

class MenuController < ApplicationController
  def show
    @order = Order.new(table: params[:table].to_i)
    @restaurant = Restaurant.find_by(name: params[:city])
    @items = @restaurant.items
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def order_params
    params.fetch(:order, {})
  end
end
