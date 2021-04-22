# frozen_string_literal: true

FactoryBot.define do
  factory :board do
    name { 'TODO List' }
    association :owner, factory: :user
  end
end
