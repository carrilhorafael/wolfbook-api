# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Rafael Carrilho", role: 3, email:"rafael@email.com", gender:"M", birthdate:"16/02/2000", password:"123456", password_confirmation:"123456")
User.create(name:"Arthur Nakao", role: 3, email:"arthur@email.com", gender:"M", birthdate:"16/02/2000", password:"123456", password_confirmation:"123456")
User.create(name:"Rafael Kanazawa", role: 3, email:"kana@email.com", gender:"M", birthdate:"16/02/2000", password:"123456", password_confirmation:"123456")
User.create(name:"Mairon Azevedo", role: 3, email:"mairon@email.com", gender:"M", birthdate:"16/02/2000", password:"123456", password_confirmation:"123456")
User.create(name:"Thiago Andrade", role: 3, email:"thiago@email.com", gender:"M", birthdate:"16/02/2000", password:"123456", password_confirmation:"123456")

require 'faker'
20.times.each do |t|
    User.create(name: Faker::Name.name, role: 3, email: "user#{t}@email.com", gender:"M", birthdate:"16/02/2000", password:"123456", password_confirmation:"123456")
end
