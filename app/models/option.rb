class Option < ApplicationRecord
  belongs_to :food
  has_many :choices, dependent: :destroy
end
