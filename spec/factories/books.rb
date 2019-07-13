# FactoryBot.define do
#   # book factory with `belongs_to` association on library
#   factory :book do
#     association :library
#     title { Faker::Book.title }
#     author { Faker::Book.author }
#     genre { Faker::Book.genre }
#     on_shelf { Faker::Boolean.boolean(0.9) }
#   end
# end
