# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Artist.create(name: "Katana", bio: "Was a good person")
a1 = Artist.create(name: "Stan", bio: "yeet")
g1 = Genre.create(name: "banana rock")
a1.songs << Song.new(name:"Everest")
g1.songs << Song.new(name:"Everest")