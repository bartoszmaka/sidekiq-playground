FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "factory article ##{n}" }
    description { 'factoried description' }
    approved { true }

    association :author, factory: :writer

    trait :not_approved do
      approved { false }
    end
  end
end
