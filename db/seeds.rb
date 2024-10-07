# puts "Cleaning database..."
# Availability.destroy_all
# Cat.destroy_all
# puts "Creating cats..."
# [
#   { name: "Minou", age: 1, size: "small", heavy_hair_loss: false, sweet_cuddly_temper: true, strong_purring: false, description: "Very nice and discreet cat", address: "Paris", price_per_day: 8, owner: Owner.first },
#   { name: "Roi Lion", age: 12, size: "large", heavy_hair_loss: true, sweet_cuddly_temper: false, strong_purring: true, description: "Love to catch birds", address: "Bordeaux", price_per_day: 4, owner: Owner.first },
#   { name: "Felix", age: 5, size: "medium", heavy_hair_loss: false, sweet_cuddly_temper: false, strong_purring: true, description: "Curious and adventurous", address: "Bordeaux", price_per_day: 5, owner: Owner.last },
#   { name: "Blanche", age: 2, size: "small", heavy_hair_loss: true, sweet_cuddly_temper: true, strong_purring: true, description: "Sweetest of the sweetest. Love shoes.", address: "Bordeaux", price_per_day: 6, owner: Owner.last },
#   { name: "Graou", age: 6, size: "large", heavy_hair_loss: false, sweet_cuddly_temper: true, strong_purring: false, description: "Must have been a dog in another life. Very protective.", address: "Paris", price_per_day: 7, owner: Owner.first }
# ].each do |cat|
#   Cat.create(cat)
#   puts "Created #{Cat.last.name}"
# end

puts "Creating availabilities..."
[
  { start_on: "2024-12-05", end_on: "2024-12-07", cat: Cat.second },
  { start_on: "2024-12-12", end_on: "2024-12-15", cat: Cat.second },
  { start_on: "2024-11-05", end_on: "2024-11-07", cat: Cat.second },
  { start_on: "2024-11-12", end_on: "2024-11-15", cat: Cat.second },
  { start_on: "2024-11-12", end_on: "2024-11-15", cat: Cat.first },
  { start_on: "2024-10-12", end_on: "2024-10-15", cat: Cat.first },
  { start_on: "2024-12-22", end_on: "2024-12-25", cat: Cat.first },
  { start_on: "2024-12-12", end_on: "2024-12-15", cat: Cat.third },
  { start_on: "2024-12-25", end_on: "2024-12-28", cat: Cat.third }
].each do |availability|
  Availability.create(availability)
  puts "Created new availability"
end

puts "Creating bookings..."
[
  { start_on: "2024-12-05", end_on: "2024-12-07", cat: Cat.second, booking_status: "required" }
]

puts "Finished!"
