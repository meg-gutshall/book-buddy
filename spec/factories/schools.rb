FactoryBot.define do

  # school factory without associations
  factory :school do
    name { Faker::Address.unique.community }

    # school factory without associations
    factory :school_with_students do
      transient do
        students_count {10}
      end

      after(:create) do |school, evaluator|
        build_list(:students, evaluator.students_count, school: school)
      end

      factory :student do
        association :school
        first_name { Faker::Name.unique.first_name }
        last_name { Faker::Name.unique.last_name }
        email { "#{first_name}_#{last_name}@#{school.name}.edu".downcase }
      end

    end

  end

end
