# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cycle.create([
  { name: 'Inkjet printer', public_status: true },
  { name: 'Apple iPhone', public_status: true },
  { name: 'VW Beetle', public_status: true },
  { name: '1-month veggies locally sourced', public_status: true },
  { name: 'Earthster operations', public_status: true },
  { name: 'Electric guitar', public_status: true },
  { name: 'Pressure pump', public_status: false },
])
