FactoryBot.define do

  # school factory without associations
  factory :school do
    name { Faker::Address.unique.community }

    # school factory with `has_many` association for students
    factory :school_with_students do
      transient do
        students_count {90}
      end

      after(:create) do |school, evaluator|
        create_list(:student, evaluator.students_count, school: school)
      end

    end

    # school factory with `has_many` association for libraries
    factory :school_with_libraries do
      transient do
        libraries_count {3}
      end

      after(:create) do |school, evaluator|
        create_list(:library, evaluator.libraries_count, school: school)
      end

    end

  end

  # student factory with a `belongs_to` association for the school
  factory :student do
    school
    first_name { Faker::Name.unique.first_name }
    last_name { Faker::Name.unique.last_name }
    email { "#{first_name}_#{last_name}@#{school.name.gsub(" ","")}.edu".downcase }
    password { "password" }
  end

  # library factory with a `belongs_to` association for the school
  factory :library do
    school
    room_number { Faker::Number.number(3) }

    # library factory with `has_many` association for books
    factory :library_with_books do
      transient do
        books_count {90}
      end

      after(:create) do |library, evaluator|
        create_list(:book, evaluator.books_count, library: library)
      end

    end

  end

  # book factory with a `belongs_to` association for the library
  factory :book do
    library
    title { Faker::Book.title }
    author { Faker::Book.author }
    genre { Faker::Book.genre }
    copies { Faker::Number.between(1, 3) }
  end

end
