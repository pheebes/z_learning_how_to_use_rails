# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  users = User.create([{first_name: 'Alex', last_name: 'Hardins', years_of_experience: '15', email: 'fakeemail@gmail.com'}, {first_name: 'Bob', last_name: 'Smith', years_of_experience: '2', email: 'fake@gmail.com'}, {first_name: 'Cindy', last_name: 'Fletcher', years_of_experience: '6', email: 'email@gmail.com'}])
