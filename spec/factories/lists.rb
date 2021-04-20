# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    name { 'Test List' }
    position { 0 }
    association :board, factory: :board
  end
end
