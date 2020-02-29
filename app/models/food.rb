class Food < ApplicationRecord
  belongs_to :restaurant
  has_many :options, dependent: :destroy
end
