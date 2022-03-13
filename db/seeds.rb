# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 40.times do
#   Product.create(
#     name: Faker::Lorem.word,
#     color: Faker::Color.hex_color,
#     price: Faker::Commerce.price,
#     sku: Faker::Number.number(10)
#   )
# end


5.times do
  Expense.create(
    user: 1,
    name: %w[dayJob ebay etsy sidehustle secondJob].sample # a user can have only one of these 
    interval: %w[1 2 4 8 12 26 52].sample
    amount: Faker::Commerce.price,
    sku: Faker::Commerce.price(range: 0..100000.0, as_string: true) # => "2.18"
  )
end

5.times do
  Expense.create(
    user: 2,
    name: %w[dayJob ebay etsy sidehustle secondJob].sample # a user can have only one of these 
    interval: %w[1 2 4 8 12 26 52].sample
    amount: Faker::Commerce.price,
    sku: Faker::Commerce.price(range: 0..100000.0, as_string: true) # => "2.18"
  )
end