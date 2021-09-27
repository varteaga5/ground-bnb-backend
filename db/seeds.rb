# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '❌ deleting all seeds...'
User.destroy_all

puts '🥋 Seeding users...'

User.create(name:'dianna',email:'dianna@dianna.com')
User.create(name:'timmy',email:'timmy@timmy.com')
Property.create(address:'123 joy lane', price: 350, user_id:User.first.id)
Property.create(address:'55 wall st', price: 500, user_id:User.first.id)


puts 'creating properties'

Property.create(address:"123 Joy Lane", price: 350, user_id:User.first.id)
Property.create(address:"55 Wall st", price:500, user_id:User.first.id)

puts 'seeding done'
