class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable
         has_many :products
         has_many :bookings
         has_one_attached :profile

  pay_customer stripe_attributes: :stripe_attributes


  def stripe_attributes(pay_customer)
  {
    address: {
      city: pay_customer.owner.city,
      country: pay_customer.owner.country
    },
    metadata: {
      pay_customer_id: pay_customer.id,
      user_id: id # or pay_customer.owner_id
    }
  }
end
  #        def skip_confirmation_notification?
  #   # Skip confirmation email for sign-in (login)
  #   false
  # end
end
