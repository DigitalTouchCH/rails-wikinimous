# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
require 'faker'

# Supprimez tous les articles existants pour éviter les doublons lors de l'exécution multiple des seeds
Article.delete_all

# Générez 10 faux articles
10.times do
  Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs(number: 3).join("\n")
  )
end

puts '10 faux articles ont été générés dans la base de données.'
