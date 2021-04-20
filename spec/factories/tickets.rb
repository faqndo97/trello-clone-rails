# frozen_string_literal: true

FactoryBot.define do
  factory :ticket do
    title { 'Test title' }
    description { 'Test Description' }
    position { 0 }
    association :list, factory: :list
  end
end
