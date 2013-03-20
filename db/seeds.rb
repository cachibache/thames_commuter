# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


boats = Boat.create!([ { name: "Johns Boat", slug: "johns-boat"}, 
  { name: "Lady Marmaduke", slug: "lady-marmaduke"},
  { name: "Sarah-Jane", slug: "sarah-jane"},
  { name: "lazy lizzie", slug: "lazy-lizzie"},
  { name: "New Janey", slug: "new-janey"},
  { name: "The Tooth Fairy", slug: "the-tooth-fairy"}
  ])

passengers = Passenger.create!([{ name: "Jack The Ripper!!", slug: "jack-the-ripper-"},
  { name: "Sally Who Met Harry", slug: "sally-who-met-harry"}
  ])