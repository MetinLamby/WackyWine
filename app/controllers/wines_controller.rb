class WinesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
    else
    @white_wines =  Winetype.first.wines
    @red_wines = Winetype.second.wines
    end
  end

  def show
    @order_item = OrderItem.new
    @wine = Wine.find(params[:id])
    @fruits = Fruit.all
    @allfruits = (@wine.fruits + @fruits)
    @allfruitstwo = @allfruits.select{ |e| @allfruits.count(e) > 1 }.uniq
    @allfruitsthree = @allfruits.select{ |e| @allfruits.count(e) == 1 }.uniq
  end
end
