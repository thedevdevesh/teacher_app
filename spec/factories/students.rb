# frozen_string_literal: true

FactoryBot.define do
  factory :student do
    name { 'John Doe' }
    subject { 'Math' }
    marks { 90 }
    association :teacher
  end
end
