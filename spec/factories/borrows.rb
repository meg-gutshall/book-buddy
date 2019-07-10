FactoryBot.define do
  factory :borrow do
    due_date { "2019-07-10" }
    renewal { false }
  end
end
