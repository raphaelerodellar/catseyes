# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# puts "Cleaning database..."
# Cat.destroy_all
puts "Creating cats..."
[
  # { name: "Minou", age: 1, size: "small", heavy_hair_loss: false, sweet_cuddly_temper: true, strong_purring: false, description: "Very nice and discreet cat", address: "Paris", price_per_day: 8, owner_id: Owner.first },
  { name: "Roi Lion", age: 12, size: "large", heavy_hair_loss: true, sweet_cuddly_temper: false, strong_purring: true, description: "Love to catch birds", address: "Bordeaux", price_per_day: 4, owner_id: Owner.first },
  { name: "Felix", age: 5, size: "medium", heavy_hair_loss: false, sweet_cuddly_temper: false, strong_purring: true, description: "Curious and adventurous", address: "Bordeaux", price_per_day: 5, owner_id: Owner.last },
  { name: "Blanche", age: 2, size: "small", heavy_hair_loss: true, sweet_cuddly_temper: true, strong_purring: true, description: "Sweetest of the sweetest. Love shoes.", address: "Bordeaux", price_per_day: 6, owner_id: Owner.last },
  { name: "Graou", age: 6, size: "large", heavy_hair_loss: false, sweet_cuddly_temper: true, strong_purring: false, description: "Must have been a dog in another life. Very protective.", address: "Paris", price_per_day: 7, owner_id: Owner.first }
].each do |cat|
  Cat.create(cat)
  # puts "Created #{cat.name}"
end
puts "Finished!"

# Cat.create(name: "Minou", age: 1, size: "small", description: "Very nice and discreet cat", address: "Paris", price_per_day: 8, owner_id: Owner.first)
