# FactoryBot.define do

#   # student factory with a `belongs_to` association for the school
#   factory :student do
#     school
#     first_name { Faker::Name.unique.first_name }
#     last_name { Faker::Name.unique.last_name }
#     email { "#{first_name}_#{last_name}@#{school.name}.edu".downcase }
#   end

#   # school factory without associations
#   factory :school do
#     name { Faker::Address.unique.community }

#     # school factory with `has_many` association for students
#     factory :school_with_students do
#       transient do
#         students_count {90}
#       end

#       after(:create) do |school, evaluator|
#         create_list(:student, evaluator.students_count, school: school)
#       end

#     end

#   end

# end
