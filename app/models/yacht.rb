class Yacht < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings

  has_one_attached :photo

  validates :name, :description, :price, :location, presence: true
end
