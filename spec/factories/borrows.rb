FactoryBot.define do
  # borrow factory with `belongs_to` association on student and book
  factory :borrow do
    association :student
    association :book
    # due_date { (Time.current + 2628000).strftime("%A, %B %e, %Y") } --> Don't include attributes with defaults in factories
    # renewed { false } --> Don't include attributes with defaults in factories
  end
end
