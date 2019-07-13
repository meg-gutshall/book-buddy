# FactoryBot.define do

#   # student factory with a `belongs_to` association for the school
#   factory :student do
#     school
#     first_name { Faker::Name.unique.first_name }
#     last_name { Faker::Name.unique.last_name }
#     email { "#{first_name}_#{last_name}@#{school.name}.edu".downcase }
#   end
  
#   # library factory with a `belongs_to` association for the school
#   factory :library do
#     school
#     location { Faker::Number.number(3) }
#   end

#   # school factory without associations
#   factory :school do
#     name { Faker::Address.unique.community }

#     # school factory with `has_many` association for students and libraries
#     factory :school_with_students_and_libraries do
#       transient do
#         students_count {120}
#         libraries_count {3}
#       end

#       after(:create) do |school, students_evaluator, libraries_evaluator|
#         create_list(:student, students_evaluator.students_count, school: school)
#         create_list(:library, libraries_evaluator.libraries_count, school: school)
#       end

#     end

#   end

# end
