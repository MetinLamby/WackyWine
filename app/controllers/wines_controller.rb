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
    @wine = Wine.find(params[:id])
    @fruits = Fruit.all
  end
end
