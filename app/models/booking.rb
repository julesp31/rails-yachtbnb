class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :yacht
  has_many   :reviews, dependent: :destroy

  validates :yacht_id, :start_date, :end_date, presence: true

  validate :end_date_after_start_date

  def total_price
    duration = (end_date - start_date)

    total = yacht.price * duration
    return total
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

end
