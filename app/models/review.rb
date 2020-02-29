class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :order
end
