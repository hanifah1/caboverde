# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'The Flying Peanut', description: 'description', price: 23, image_url: 'pbutter5.jpg' )
Product.create(name: 'Underwater Peanut', description: 'description', price: 44, image_url: 'pbutter3.jpg' )
Product.create(name: 'Peanut Smarts', description: 'description', price: 37, image_url: 'pbutter2.jpg' )
Product.create(name: 'PB Time Freeze', description: 'description', price: 46, image_url: 'pbutter8.jpg' )
Product.create(name: 'Peanut Night Vision', description: 'description', price: 29, image_url: 'pbutter7.jpg' )
Product.create(name: 'PB Animal Echolocation', description: 'description', price: 37, image_url: 'pbutter9.jpg' )

Order.create(user_id: 1, product_id: 1, total: 10.0)
Order.create(user_id: 1, product_id: 2, total: 5.0)
