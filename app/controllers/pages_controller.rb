class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  # def home
  # end

  # def about
  # end

  def show

    # if Order.where(user: current_user).last.nil?
    #   @order = Order.create!(state: 'pending', user: current_user)
    # elsif Order.where(user: current_user).last.state == 'pending'
    #   @order = Order.find_by(user: current_user)
    # elsif Order.where(user: current_user).last.state == 'paid'
    #   @order = Order.create!(state: 'pending', user: current_user)
    # end





    render template: "pages/#{params[:page]}"
  end
end
