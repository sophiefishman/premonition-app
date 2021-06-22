# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create({name: "Ringo", email: "ringo@dog.com", password: "password"})

users = User.create({name: "Sunny", email: "sunny@dog.com", password: "password"})

users = User.create({name: "Karma", email: "karma@dog.com", password: "password"})

favorites = Favorite.create({tmdb_api_id: "550", user_id: 1, review: "Love this movie adaptation of the Chuck Palahniuk novel Fight Club!"})

favorites = Favorite.create({tmdb_api_id: "254320", user_id: 3, review: "A weird dark romantic comedy, loved the symbolism of The Lobster"})

favorites = Favorite.create({tmdb_api_id: "300668", user_id: 2, review: "Annihilation is by the same guy who did Ex Machina, lots of weird scifi visuals, crazy ending"})

favorites = Favorite.create({tmdb_api_id: "329865", user_id: 2, review: "Arrival is a cool alien movie"})

favorites = Favorite.create({tmdb_api_id: "264660", user_id: 3, review: "Ex Machina is one of the best films of our time"})