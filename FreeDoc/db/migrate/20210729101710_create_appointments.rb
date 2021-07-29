class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :time
      t.string :location
      t.string :description
      t.integer :patient_id
      t.integer :doctor_id
      t.integer :appointment_type_id
      t.integer :status_id
      t.timestamps

    end
  end
end
