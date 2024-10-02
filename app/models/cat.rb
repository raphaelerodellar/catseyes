class Cat < ApplicationRecord
  belongs_to :owner
  has_many :availabilities, :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :owner_id, presence: true
  validates :price_per_day, presence: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }, allow_nil: true

  has_many_attached :photos
end
