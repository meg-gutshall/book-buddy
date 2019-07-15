FactoryBot.define do
  # borrow factory with `belongs_to` association on student and book
  factory :borrow do
    association :student
    association :book
    renewed { false }
  end
end
