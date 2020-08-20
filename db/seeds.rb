# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# require "open-uri"

# Purchase.destroy_all
# Art.destroy_all
# User.destroy_all

# 5.times do
#   user = User.create!(email: Faker::Internet.email, password: "123546")
#   puts "User created #{user.email}"
#     1.times do #3
#       art = Art.create!(name: Faker::University.name, style: Faker::Esport.player, price: Faker::Number.number(digits: rand(1..7)), description: Faker::Lorem.paragraphs.first, artist: Faker::Artist.name, user: user)
#       file = URI.open('https://source.unsplash.com/random')
#       art.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#       puts "art created"
#         1.times do #3
#           purchase = Purchase.create!(art: art, user: User.all.sample)
#         end
#     end
# end
