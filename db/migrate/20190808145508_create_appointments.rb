class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
        t.references :doctor, foreign_key: true
        t.references :patient, foreign_key: true
        t.datetime :appointment_datetime
        t.timestamps
    end
  end
end
