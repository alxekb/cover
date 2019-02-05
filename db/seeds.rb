# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

Offer.destroy_all
Blogger.destroy_all
Review.destroy_all
Solution.destroy_all

12.times do
  Blogger.create(
    social_network: "instagram",
    followers: Faker::Number.number(6),
    account_name: Faker::Artist.name,
    about: Faker::FamousLastWords.last_words
  )
end
@bloggers = Blogger.all
@bloggers.each do |blogger|
  p "created blogger #{blogger.account_name}"
end
p "Created #{Blogger.count} account(s)."

12.times do
  Offer.create(
    name: Faker::FunnyName.name,
    idea: Faker::Lorem.paragraph,
    purpose: Faker::Lorem.paragraph,
    description: Faker::Lorem.paragraph,
    price: Faker::Number.decimal(4, 2),
    blogger_id: Blogger.last.id
  )
end
p "Creted #{Offer.count} offers."
12.times do
  Review.create(
    brand: Faker::Commerce.product_name,
    author: Faker::FunnyName.name,
    review: Faker::Matz.quote
  )
end
p "created #{Review.count} reviews."
12.times do(
  Solution.create(
    problem: Faker::ChuckNorris.fact,
    solution: Faker::BackToTheFuture.quote,
    offers_id: Offer.last.id
  )
)
end
p "Creted #{Solution.count} solutions."
