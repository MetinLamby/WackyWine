class WinesController < ApplicationController
  def index
    @white_wines =  Winetype.first.wines
    @red_wines = Winetype.second.wines
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
