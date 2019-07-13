FactoryBot.define do
  # holds factory with `belongs_to` association on student and book
  factory :hold do
    association :student
    association :book
    borrowed { Faker::Boolean.boolean(0.7) }
  end
end
