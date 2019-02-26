# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guest: 3
)

10.times do
  Flat.create!(
    name: Faker::Movies::LordOfTheRings.location,
    address: Faker::Address.full_address,
    description: Faker::TvShows::SiliconValley.quote,
    price_per_night: [Faker::Number.number(2), Faker::Number.number(3)].sample,
    number_of_guest: Faker::Number.number(1),
    image: Faker::LoremPixel.image("350x260", false, 'city', (1..10).to_a.sample)
  )
end
