# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it 'has a valid factory' do
    teacher = FactoryBot.build(:teacher)
    expect(teacher).to be_valid
  end

  it 'is invalid without an email' do
    teacher = Teacher.new(password: 'password123')
    expect(teacher).to_not be_valid
  end

  it 'is invalid without a password' do
    teacher = Teacher.new(email: 'teacher@example.com')
    expect(teacher).to_not be_valid
  end
end
