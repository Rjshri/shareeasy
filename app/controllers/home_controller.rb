class HomeController < ApplicationController
  def index
    @product = Product.new  # Initialize a new Product object
  end

  def about
  end

  def myproducts
    @user = User.find(params[:id])
  end
end
