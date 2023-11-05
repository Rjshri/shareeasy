class AddReferencesToBookingsAndProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :product, foreign_key: true
    add_reference :products, :user, foreign_key: true
  end
end
