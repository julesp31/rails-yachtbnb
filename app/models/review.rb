class Review < ApplicationRecord
  belongs_to :booking

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
