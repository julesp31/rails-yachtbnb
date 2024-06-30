class Yacht < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings

  validates :name, :description, :price, :location, presence: true
end
