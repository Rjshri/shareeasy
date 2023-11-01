class Product < ApplicationRecord
  has_one :booking
  belongs_to :user
end
