class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # @order = current_user.orders.where(state: 'paid').find(params[:id])
    if !current_user
      render "orders/index"
    elsif current_user
      if current_user.orders.empty?
        @order = Order.create!(state: 'pending', user: current_user)
        @order_items = @order.order_items
      elsif Order.where(user: current_user).last.state == 'pending'
        @order = Order.where({user: current_user, state: 'pending'}).last
        @order_items = @order.order_items
        wines = @order.wines
        wines_prices_all = wines.map do |wine|
          wine.price_cents
        end
        @wine_prices = wines_prices_all.sum
        @order.update(amount_cents: @wine_prices)
        @wines_skus = wines.map do |wine|
          wine.sku
        end
        @order.update(wine_sku: @wines_skus)
      elsif Order.where(user: current_user).last.state == 'paid'
        @order = Order.create!(state: 'pending', user: current_user)
        render "orders/index"
      else
        redirect_to new_user_registration_path
      # @order_items = Order.create!(state: 'pending', user: current_user)
    end
    end
  end

  # def show
  #   @order_items = Order.find_by(user: current_user).order_items
  # end

  # def create
  #   wine = Wine.find(params[:wine_id])
  #   order  = Order.create!(wine_sku: wine.sku, amount: wine.price, state: 'pending', user: current_user)

  #   redirect_to new_order_payment_path(order)
  # end


  def destroy
    @order = Order.find_by(user: current_user)
    if @order.state == "paid"
      @order.destroy
    end
  end
end
