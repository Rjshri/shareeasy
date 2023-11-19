class CheckoutsController < ApplicationController
  before_action :authenticate_user!

  def show
    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer
    @product = Product.find(params[:product_id])
    @user = User.find(params[:user_id])
    @checkout_session = current_user
    .payment_processor
    .checkout(
      mode: 'payment',
      line_items: [{
         price_data: {
       currency: 'inr',
       product_data: {
         name: @product.name,
         description: @product.description,
         images: ['https://localhost:3000'+rails_blob_path(@product.image, only_path: true)],

       },
       unit_amount: @product.price*100,

     },
     quantity: 1,
   }],
      success_url: checkout_success_url,
    )
  end

  def success

  end
end
