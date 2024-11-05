# frozen_string_literal: true

FactoryBot.define do
  factory :teacher do
    email { 'teacher@example.com' }
    password { 'password123' }
  end
end
