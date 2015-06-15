# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p "Creaded some users"

User.destroy_all
user = User.new
user.firstname = "Bob"
user.lastname = "Jones"
user.email = "bobjones@gmail.com"
user.admin = true
user.password = "ZAQ!2wsx"
user.password_confirmation = "ZAQ!2wsx"
user.save!

user1 = User.create!(firstname: 'Rob', lastname: 'Ken', email: 'rob@gamil.com', password: 'zaq12wsx', password_confirmation: 'zaq12wsx')
user2 = User.create!(firstname: 'Jon', lastname: 'Bin', email: 'jon@gamil.com', password: 'zaq12wsx', password_confirmation: 'zaq12wsx')
user3 = User.create!(firstname: 'Anna', lastname: 'Foo', email: 'anna@gamil.com', password: 'zaq12wsx', password_confirmation: 'zaq12wsx')
user4 = User.create!(firstname: 'Lucy', lastname: 'Bin', email: 'lucy@gamil.com', password: 'zaq12wsx', password_confirmation: 'zaq12wsx')

p 'Category created'
Category.destroy_all

category = Category.create!(name: 'Books')
category1 = Category.create!(name: 'Games')

p 'Product created'
Product.destroy_all

product = Product.create!(title: 'Some say' price: 10.25, user: user, category: category, description: 'aaaaaaaaaaaaaaaaaasssssssssssssssssss')
product1 = Product.create!(title: 'Super game', price: 14.25, user: user1, category: category1, description: 'vvvvvvvvvvvvvvvvvvvvssssssssssssssssss')

p 'Review created'
Review.destroy_all

Review.create!( content: 'lalaalal', rating: 4, user: user3, product: product)
Review.create!( content: 'lslsls', rating: 2, user: user4, product: product1)