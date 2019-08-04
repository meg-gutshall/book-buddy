# FactoryBot.define do

#   # library factory with a `belongs_to` association for the school
#   factory :library do
#     school
#     room { Faker::Number.number(3) }
#   end

#   # school factory without associations
#   factory :school do
#     name { Faker::Address.unique.community }

#     # school factory with `has_many` association for libraries
#     factory :school_with_libraries do
#       transient do
#         libraries_count {3}
#       end

#       after(:create) do |school, evaluator|
#         create_list(:library, evaluator.libraries_count, school: school)
#       end

#     end

#   end

# end
