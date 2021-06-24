# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie = Movie.new({title: "The Hangover",year: 2009, plot: "Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing."})
movie.save 