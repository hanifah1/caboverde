# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Product.delete_all
Order.delete_all

Product.create(name: 'Cran Peanut', description: 'Organic & Gluten Free', price: 2300, image_url: 'five.jpg' )
Product.create(name: 'Salted Peanut', description: 'Organic & Gluten Free', price: 4400, image_url: 'two.jpg' )
Product.create(name: 'Blue Peanut', description: 'Organic & Gluten Free', price: 3700, image_url: 'three.jpg' )
Product.create(name: 'Coco Peanut', description: 'Organic & Gluten Free', price: 4600, image_url: 'four.jpg' )
Product.create(name: 'Smore Peanut', description: 'Organic & Gluten Free', price: 2900, image_url: 'one.jpg' )
Product.create(name: 'Palm Peanut', description: 'Organic & Gluten Free', price: 3700, image_url: 'six.jpg' )
