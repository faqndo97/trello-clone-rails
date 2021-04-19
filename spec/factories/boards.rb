# frozen_string_literal: true

FactoryBot.define do
  factory :board do
    name { 'Test Board' }
    association :owner, factory: :user
  end
end
