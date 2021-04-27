# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    name { %w[TODO IN_DESIGN WIP CODE_REVIEW QA DONE].sample }
    position { 0 }
    association :board, factory: :board
  end
end
