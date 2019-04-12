class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  # def home
  # end

  # def about
  # end

  def show
    render template: "pages/#{params[:page]}"
  end
end
