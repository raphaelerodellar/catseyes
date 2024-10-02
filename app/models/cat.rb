class Cat < ApplicationRecord
  belongs_to :owner

  validates :name, presence: true
  validates :address, presence: true
  validates :owner_id, presence: true
  validates :price_per_day, presence: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }, allow_nil: true

end
