# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.all
    render json: appointments, status: :ok
  end

  def create
    created_appointment = Appointment.create!(
      location_base: params[:location_base],
      appointment_date: params[:appointment_date],
      time_slot: params[:time_slot]
    )
    render json: created_appointment, status: :created
  end

  def show
    appointment_id = params[:id]
    appointment = Appointment.find(appointment_id)
    render json: appointment, status: :ok
  end

  def update
    updated_appointment = Appointment.update!(
      params[:id],
      {
        location_base: params[:location_base],
        appointment_date: params[:appointment_date],
        time_slot: params[:time_slot]
      }
    )
    render json: updated_appointment, status: :ok
  end
end
