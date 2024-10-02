class Booking < ApplicationRecord
  belongs_to :cat
  belongs_to :use

  validates :start_on, :end_on, :cat_id, :use_id, presence: true
  validates :booking_status, inclusion: { in: %w(required accepted declined) }
end
