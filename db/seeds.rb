# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Admin object
Admin.create(
  first_name: "Meg",
  last_name: "Gutshall",
  password: "password",
  email: "eggs4megs@meg.com"
)

# Faker school objects
2.times do
  School.create(
    admin_id: 1,
    name: Faker::Address.community
  )
end

# Faker student objects
s1 = Student.create(school_id: 1, first_name: "Joe", last_name: "Student", password: "password", email: "joe@email.com")
s2 = Student.create(school_id: 2, first_name: "Jill", last_name: "Student", password: "password", email: "jill@email.com")

58.times do
  Student.create(
    school_id: 1,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password,
    email: Faker::Internet.free_email
  )
end

74.times do
  Student.create(
    school_id: 2,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password,
    email: Faker::Internet.free_email
  )
end

# Faker library objects
2.times do
  Library.create(
    school_id: 1,
    room_number: Faker::Number.number(3)
  )
end

3.times do
  Library.create(
    school_id: 2,
    room_number: Faker::Number.number(3)
  )
end

# Faker book objects
44.times do
  Book.create(
    library_id: 1,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

83.times do
  Book.create(
    library_id: 2,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

54.times do
  Book.create(
    library_id: 3,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

67.times do
  Book.create(
    library_id: 4,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

57.times do
  Book.create(
    library_id: 5,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end
