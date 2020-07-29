# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Note.destroy_all

alex = User.create(name: 'alex', password: 'password') 
bob = User.create(name: 'bob', password: 'password1')

note1 = Note.create(title: 'shopping', description: 'apples, pears, bears', completed: false, user_id: alex.id)
note2 = Note.create(title: 'reading', description: 'know what they say! A book a day...', completed: false, user_id: bob.id)



