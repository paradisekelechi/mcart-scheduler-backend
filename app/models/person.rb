class Person < ApplicationRecord
  belongs_to :appointment

  validates :name, :duration

  # Appointment attribute is non-null, so requires a presence
  validates :appointment, presence true
end
