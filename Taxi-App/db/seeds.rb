# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Driver.create(name:'MD', age: 26, rating: 4.0)
Driver.create(name:'Song', age: 27, rating: 4.0)
Driver.create(name:'Amzad', age: 28, rating: 3.5)
Driver.create(name:'sajil', age: 38, rating: 3.0)
Driver.create(name:'Rastko', age: 48, rating: 2.5)

Taxi.create(model: 'Camry', year: 2016)
Taxi.create(model: 'Accord', year: 2017)
Taxi.create(model: 'Escape', year: 2014)
Taxi.create(model: 'Prious', year: 2010)
Taxi.create(model: 'Corolla', year: 1997)
