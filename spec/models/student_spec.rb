require 'rails_helper'

RSpec.describe Student, type: :model do
  before(:each) do
    @teacher = Teacher.create!(email: 'teacher@example.com', password: 'password123')
  end

  it 'is valid with a name, subject, marks, and teacher' do
    student = Student.new(
      name: 'John Doe',
      subject: 'Math',
      marks: 90,
      teacher: @teacher
    )
    expect(student).to be_valid
  end

  it 'is invalid without a name' do
    student = Student.new(
      subject: 'Math',
      marks: 90,
      teacher: @teacher
    )
    expect(student).to_not be_valid
  end

  it 'is invalid without a subject' do
    student = Student.new(
      name: 'John Doe',
      marks: 90,
      teacher: @teacher
    )
    expect(student).to_not be_valid
  end

  it 'is invalid without marks' do
    student = Student.new(
      name: 'John Doe',
      subject: 'Math',
      teacher: @teacher
    )
    expect(student).to_not be_valid
  end

  it 'is invalid if a duplicate student exists with the same name and subject' do
    Student.create!(name: 'John Doe', subject: 'Math', marks: 90, teacher: @teacher)
    duplicate_student = Student.new(name: 'John Doe', subject: 'Math', marks: 100, teacher: @teacher)
    expect(duplicate_student).to_not be_valid
  end
end
