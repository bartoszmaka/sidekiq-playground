FactoryBot.define do
  factory :writer do
    sequence(:name) { |n| "factory writer ##{n}" }
    project
  end
end

