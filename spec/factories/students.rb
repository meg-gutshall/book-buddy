# FactoryBot.define do
#   # student factory with `belongs_to` association on school
#   factory :student do
#     association :school
#     first_name { Faker::Name.unique.first_name }
#     last_name { Faker::Name.unique.last_name }
#     email { "#{first_name}_#{last_name}@#{school.name}.edu".downcase }
#   end
# end
