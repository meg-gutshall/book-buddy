# FactoryBot.define do
#   # book factory with `belongs_to` association on library
#   factory :book do
#     association :library
#     title { Faker::Book.title }
#     author { Faker::Book.author }
#     genre { Faker::Book.genre }
#     copies { Faker::Number.between(1, 3) }
#   end
# end
