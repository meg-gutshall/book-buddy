FactoryBot.define do
  # borrow factory with `belongs_to` association on student and book
  factory :borrow do
    association :student
    association :book
    due_date { Faker::Date.between(6.days.ago, 8.days.from_now) }
    renewed { false }
  end
end
