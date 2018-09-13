FactoryBot.define do
  factory :project do
    sequence(:topic) { |n| "factoried topic ##{n}" }
  end
end

