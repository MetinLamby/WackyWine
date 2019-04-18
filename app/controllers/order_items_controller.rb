class OrderItemsController < ApplicationController
  before_action :new_order

  def new
    @wine = Wine.find(params[:wine_id])
    @order_item = OrderItem.new
  end

  def create
    @order_item = OrderItem.new(order_id: @order.id)
    @wine = Wine.find(params[:wine_id])
    @order_item.wine = @wine
    if @order_item.save
      redirect_to wine_path(@order_item.wine)
      flash[:notice] = "You added #{@wine.name} to your box"
    else
      flash[:alert] = "please try again"
      render "wines/show"
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    redirect_to orders_path
  end

  private

  def new_order
    if current_user.orders.empty?
      @order = Order.create!(state: 'pending', user: current_user)
    elsif Order.where(user: current_user).last.state == 'paid'
      @order = Order.create!(state: 'pending', user: current_user)
    elsif Order.where(user: current_user).last.state == 'pending'
      # @order = Order.find_by(user: current_user)
      @order = Order.where({user: current_user, state: 'pending'}).last
    end
  end
end
