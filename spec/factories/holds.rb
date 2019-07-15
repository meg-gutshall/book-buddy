FactoryBot.define do
  # holds factory with `belongs_to` association on student and book
  factory :hold do
    association :student
    association :book
    # available { false } --> Don't include attributes with defaults in factories
    # borrowed { false } --> Don't include attributes with defaults in factories
    # cancelled { false } --> Don't include attributes with defaults in factories
  end
end
