# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.unique.first_name }
    last_name  { Faker::Name.last_name }
    email { Faker::Internet.free_email(name: "#{first_name}  #{last_name}") }
    password { 'P@ssw0rd!' }
    admin { false }
  end

  trait :admin do
    admin { true }
  end
end
