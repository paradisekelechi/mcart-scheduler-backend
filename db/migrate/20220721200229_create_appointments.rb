class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :location_base
      t.date :appointment_date
      t.string :time_slot

      t.timestamps
    end
  end
end
