class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :yacht

  validates :yacht_id, :status, :start_date, :end_date, presence: true
end
