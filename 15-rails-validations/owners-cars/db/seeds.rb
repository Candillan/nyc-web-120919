# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all
Owner.destroy_all

o1 = Owner.create!(name: "Ian", age: 21)
o2 = Owner.create!(name: "Matt", age: 12)
Car.create!(name: 'Panda', make:'Toyota', model: 'AE86', color: 'White & Black', year: 1986, owner: o1)
Car.create!(name: 'Sheila', make:'Chevrolet', model: 'Tahoe', color: 'Blue', year: 1999, owner: o2)