class Product < ApplicationRecord
  has_one :booking
  belongs_to :user
  has_one_attached :image
end
