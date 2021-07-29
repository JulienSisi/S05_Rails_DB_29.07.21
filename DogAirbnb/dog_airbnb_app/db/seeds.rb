# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

65.times do |x|
  random_dogsitter = rand(1..26)
  random_dogs = rand(1..52)
  stroll = Stroll.create(dogsitter_id:random_dogsitter, dog_id: random_dogs)
end