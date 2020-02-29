class User < ApplicationRecord
  has_secure_password
  validates :password, length: { minimum: 6 }, on: :create
  validates :username, presence: true, uniqueness: true

  has_one :profile, dependent: :destroy
  has_one :restaurants, dependent: :destroy
  has_many :orders
  has_many :restaurants, through :orders
  has_many :reviews
  has_many :restaurants, through :reviews
end
