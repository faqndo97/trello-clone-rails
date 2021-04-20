# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    name { 'Test List' }
    postition { 0 }
    association :board, factory: :board
  end
end
