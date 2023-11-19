class AddBillingLocationToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :city, :string
    add_column :users, :country, :string
    remove_column :products, :image
  end
end
