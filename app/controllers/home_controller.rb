class HomeController < ApplicationController
  def index
    @product = Product.new  # Initialize a new Product object
    # @unique_categories = Product.distinct.pluck(:category)
  end

  def about
  end

  def explore
    @category = params[:category]
  end

  def myproducts
    @user = User.find(params[:id])
  end
end
