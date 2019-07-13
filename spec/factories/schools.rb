FactoryBot.define do
  # school factory without associations
  factory :school do
    name { Faker::Address.unique.community }
  end
end
