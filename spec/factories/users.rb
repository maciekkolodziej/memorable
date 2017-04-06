# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    email                   { Faker::Internet.email }
    password                { Faker::Internet.password(6) }
    password_confirmation   { password }
  end
end
