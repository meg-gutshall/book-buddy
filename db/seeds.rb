# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin objects
meg = Admin.create(
  first_name: "Meg",
  last_name: "Gutshall",
  password: "password",
  email: "meg@meg.com"
)

pip = Admin.create(
  first_name: "Pip",
  last_name: "Gutshall",
  password: "password",
  email: "pip@pip.com"
)

les = Admin.create(
  first_name: "Les",
  last_name: "Gutshall",
  password: "password",
  email: "les@les.com"
)

ei = Admin.create(
  first_name: "Eileen",
  last_name: "Gutshall",
  password: "password",
  email: "ei@ei.com"
)

# School objects
otis = School.create(
  name: "Otis Elementary School"
)

redding = School.create(
  name: "Redding High School"
)

marv = School.create(
  name: "Marvin Middle School"
)

gaye = School.create(
  name: "Gaye High School"
)

meg.schools << otis
meg.schools << redding
pip.schools << otis
pip.schools << redding

les.schools << marv
les.schools << gaye
ei.schools << marv
ei.schools << gaye

# Faker student objects
s1 = Student.create(
  school_id: 1,
  first_name: "Joe",
  last_name: "Student",
  password: "password",
  email: "joe@email.com"
)

s2 = Student.create(
  school_id: 2,
  first_name: "Jill",
  last_name: "Student",
  password: "password",
  email: "jill@email.com"
)

s3 = Student.create(
  school_id: 3,
  first_name: "Jack",
  last_name: "Student",
  password: "password",
  email: "jack@email.com"
)

s4 = Student.create(
  school_id: 4,
  first_name: "Jen",
  last_name: "Student",
  password: "password",
  email: "jen@email.com"
)

30.times do
  Student.create(
    school_id: 1,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password,
    email: Faker::Internet.free_email
  )
end

45.times do
  Student.create(
    school_id: 2,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password,
    email: Faker::Internet.free_email
  )
end

25.times do
  Student.create(
    school_id: 3,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password,
    email: Faker::Internet.free_email
  )
end

30.times do
  Student.create(
    school_id: 4,
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
    room: Faker::Number.number(3)
  )
end

3.times do
  Library.create(
    school_id: 2,
    room: Faker::Number.number(3)
  )
end

2.times do
  Library.create(
    school_id: 3,
    room: Faker::Number.number(3)
  )
end

1.times do
  Library.create(
    school_id: 4,
    room: "Paley Library"
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

27.times do
  Book.create(
    library_id: 2,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

31.times do
  Book.create(
    library_id: 3,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

19.times do
  Book.create(
    library_id: 4,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

39.times do
  Book.create(
    library_id: 5,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

44.times do
  Book.create(
    library_id: 6,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

27.times do
  Book.create(
    library_id: 7,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end

57.times do
  Book.create(
    library_id: 8,
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    copies: Faker::Number.between(1, 3)
  )
end
