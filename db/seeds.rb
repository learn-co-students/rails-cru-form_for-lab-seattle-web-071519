# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a1= Artist.create({:name => "name1", :bio => "biobiobio"})
g1= Genre.create({:name => "genre1"})

s1= Song.create({:name => "songname1", :artist_id => a1.id, :genre_id => g1.id})