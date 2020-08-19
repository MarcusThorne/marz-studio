# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Purchase.destroy_all
Art.destroy_all
User.destroy_all


5.times do
  user = User.create!(email: Faker::Internet.email, password: "123546")
  puts "User created #{user.email}"
    3.times do
      art = Art.create!(name: Faker::University.name, style: Faker::Esport.player, price: Faker::Number.number(digits: 10), description: Faker::Lorem.paragraphs, artist: Faker::Artist.name, user: user)
      file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
      art.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      puts "art created"
        3.times do
          purchase = Purchase.create!(art: art, user: User.all.sample)
        end
    end
end



