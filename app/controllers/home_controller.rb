class HomeController < ApplicationController
  def index
  end

  def about
  end

  def myproducts
    @user = User.find(params[:id])
  end
end
