class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :zip_code
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.belongs_to :appointment, index: true 

      t.timestamps
    end
  end
end
