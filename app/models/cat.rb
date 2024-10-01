class Cat < ApplicationRecord
  belongs_to :owner
  validates :name, presence: true
  validates :adress, presence: true
  validates :owner_id, presence: true
  validates :price_per_hour, presence: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }
end
