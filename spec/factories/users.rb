# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'John' }
    last_name  { 'Doe' }
    email { 'johndoe@example.com' }
    password  { 'P@ssw0rd!' }
    admin { false }
  end

  trait :admin do
    admin { true }
  end
end
