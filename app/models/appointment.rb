# frozen_string_literal: true

class Appointment < ApplicationRecord
  before_create :set_appointment_date
  before_update :set_appointment_date

  validates :location_base, :appointment_date, :time_slot, presence: true

  # Executed before creation and update
  def set_appointment_date
    self.appointment_date = Date.parse(appointment_date.to_s)
  end
end
