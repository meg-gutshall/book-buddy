FactoryBot.define do
  # holds factory with `belongs_to` association on student and book
  factory :hold do
    association :student
    association :book
    # borrowed { false } --> Don't include attributes with defaults in factories
  end
end
