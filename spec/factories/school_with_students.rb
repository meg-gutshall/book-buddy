FactoryBot.define do

  # student factory with a `belongs_to` association for the school
  factory :student do
    first_name { Faker::Name.unique.first_name }
    last_name { Faker::Name.unique.last_name }
    email { "#{first_name}_#{last_name}@#{school.name}.edu".downcase }
    school
  end

  # school factory without associated students
  factory :school, aliases: [:school_with_students] do
    name { Faker::Address.unique.community }

    # school_student_data will create student data after the student has been created
    factory :school_student_data do
      # students_count is declared as a transient attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      transient do
        students_count { 5 }
      end

      # the after(:create) yields two values; the school instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the school is associated properly to the student
      after(:create) do |school, evaluator|
        create_list(:student, evaluator.students_count, school: school)
      end

    end

  end

end
