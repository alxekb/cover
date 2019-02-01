# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

Blogger.destroy_all
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
