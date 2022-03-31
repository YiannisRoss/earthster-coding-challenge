FactoryBot.define do
  factory :cycle do
    name { Faker::Company.name }
    public_status { false }
  end
end
