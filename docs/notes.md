# Rails Project Notes

## Models

### Associations

Worked on project models and had a couple of false starts.

I couldn't decide how to structure my models so I tried a few different implementations. My main models for the project were `Library`, `Book`, `Student`, and `Borrow`. I had the `Student` and `Book` models in a many-to-many relationship, using the `Borrow` model to create their join table. I also knew I wanted to create a many-to-many relationship between the `Student` and `Library` models but I hadn't decided how. I created a `StudentsLibrary` model to join them with the `has_many :through` statement but after further planning, I decided to create a `School` model that declares a `has_many` statement on both `Student` and `Library` models. That way, I could access students from libraries (`student.school.libraries`) and libraries from students (`library.school.students`). I also wanted a way for students to be able to put books on hold, so like the `Borrow` model, I created a `Hold` model to act as a join table between the `Student` and `Book` models.

The final setup looked like this:

| `School` | `Library` | `Student` | `Book` | `Borrow` | `Hold` |
|--------|---------|---------|------|--------|------|
| `has_many :students` | `has_many :books` | `belongs_to :school` | `belongs_to :library` | `belongs_to :student` | `belongs_to :student` |
| `has_many :libraries` | `belongs_to :school` | `has_many :borrows` | `has_many :borrows` | `belongs_to :book` | `belongs_to :book` |
| `has_many :books, through: :libraries` |  |  | `has_many :books, through: :borrows` | `has_many :students, through: :borrows` |  |
|  |  | `has_many :holds` | `has_many :holds` |  |
|  |  | `has_many :books, through: :holds` | `has_many :students, through: :holds` |  |

### Scope Methods

[ ] Libraries: group by school name
[ ] Books: alphabetize by title, author, or genre

### Class Methods

[ ] Define dates (Work on this more...)

## Setup

Worked on the model implementation, added devise, scaffold generation, messed with `Gemfile` and `spec/rails_helper.rb` a lot

### Gemfile

### Database

[ ] Installing PostgreSQL
[ ] Working with Postico
[ ] Setting up config/database.yml and .env

### Devise

[ ] Setup process
[ ] Generating views
[ ] Generating controllers

### Configurations

[ ] Generator config in config/application.rb
[ ] .gitignore file

## Testing

### Faker

I used Faker to create seed data to use while testing my app.

[ ] Had trouble clearing unique class values, instead opted for random

### FactoryBot

[ ] Issues with creating factories with associations
