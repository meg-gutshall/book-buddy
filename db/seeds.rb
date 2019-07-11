# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Faker school objects
2.times do
  School.create(
    name: Faker::Address.unique.community
  )
end

# Faker student objects
12.times do
  Student.create(
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    password: Faker::Internet.unique.password,
    email: "student@schoolname.edu",
    school_id: 1
  )
end

15.times do
  Student.create(
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    password: Faker::Internet.unique.password,
    email: "student@schoolname.edu",
    school_id: 2
  )
end

# Faker library objects
2.times do
  Library.create(
    location: Faker::Number.unique.number(3),
    school_id: 1
  )
end

3.times do
  Library.create(
    location: Faker::Number.unique.number(3),
    school_id: 2
  )
end

# Faker book objects
44.times do
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    on_shelf: Faker::Boolean.boolean(0.9),
    library_id: 1
  )
end

83.times do
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    on_shelf: Faker::Boolean.boolean(0.9),
    library_id: 2
  )
end

54.times do
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    on_shelf: Faker::Boolean.boolean(0.9),
    library_id: 3
  )
end

67.times do
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    on_shelf: Faker::Boolean.boolean(0.9),
    library_id: 4
  )
end

57.times do
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    on_shelf: Faker::Boolean.boolean(0.9),
    library_id: 5
  )
end


# Optional parameter: true_ratio=0.5
# Faker::Boolean.boolean(0.2) #=> false

## Seed Helper Methods

def school_domain
  School.find_by(id: self.school_id).name
end
