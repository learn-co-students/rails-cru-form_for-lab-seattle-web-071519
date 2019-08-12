# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "P!nk", bio: "She was born and did music and stuff.")
a2 = Artist.create(name: "Johnny Cash", bio: "He was born and did music and stuff.")
s1 = Song.create(name: "Raise Your Glass")
s2 = Song.create(name: "God's Gonna Cut You Down")
g1 = Genre.create(name: "Pop")
g2 = Genre.create(name: "Country")

g1.songs << s1
g2.songs << s2
a1.songs << s1
a2.songs << s2