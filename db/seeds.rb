# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

foods = [
  {
    name: 'Regular kibble',
    emoji: '🧆'
  },
  {
    name: 'Allergy kibble',
    emoji: '🧆'
  },
  {
    name: 'Ham',
    emoji: '🐷'
  },
  {
    name: 'Cheese',
    emoji: '🧀'
  },
  {
    name: 'Boar Nuggets',
    emoji: '🐗'
  },
]

foods.each { |food| Food.create(name: food[:name], emoji: food[:emoji]) }

medicines = [
  { name: 'Epiotic' }, { name: 'Piriton' }, { name: 'Surolan' }
]

medicines.each { |medicine| Medicine.create(name: medicine[:name]) }
