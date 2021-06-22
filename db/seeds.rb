# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create({name: "Ringo", email: "ringo@dog.com", password_digest: "kljadjoij23"})

users = User.create({name: "Sunny", email: "sunny@dog.com", password_digest: "dsfad6565"})

users = User.create({name: "Karma", email: "karam@dog.com", password_digest: "sadkjn75365@"})

favorites = Favorite.create({tmdb_api_id: "550", user_id: 1, review: "Love this movie adaptation of the Chuck Palahniuk novel Fight Club!"})

favorites = Favorite.create({tmdb_api_id: "254320", user_id: 3, review: "A weird dark romantic comedy, loved the symbolism of The Lobster"})