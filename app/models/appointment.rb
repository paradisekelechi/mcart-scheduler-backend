# frozen_string_literal: true

class Appointment < ApplicationRecord
  before_create :before_appointment_creation
  before_update :before_appointment_update

  validates :location_base, :appointment_date, :time_slot, presence: true

  # Executed before creation and update
  def set_appointment_date
    self.appointment_date = Date.parse(appointment_date.to_s)
  end

  def before_appointment_creation
    set_appointment_date

    self.created_at = Time.now
  end

  def before_appointment_update
    set_appointment_date

    self.updated_at = Time.now
  end
end
