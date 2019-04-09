class WinesController < ApplicationController
  def index
    if params[:query].present?
    else
    @white_wines =  Winetype.first.wines
    @red_wines = Winetype.second.wines
    end
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
