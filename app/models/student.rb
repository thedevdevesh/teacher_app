# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :teacher
  # Validations
  validates :name, presence: true, uniqueness: { scope: :subject, message: 'and subject combination already exists' }
  validates :subject, presence: true
  validates :marks, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
