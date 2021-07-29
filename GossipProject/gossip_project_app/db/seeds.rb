# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

40.times do |x|
  join = JoinTableGossipTag.create(gossip_id: Faker::Number.between(from: 1, to: 20), tag_id: Faker::Number.between(from: 1, to: 10))
end

