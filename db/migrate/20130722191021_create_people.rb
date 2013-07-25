class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.datetime :DOB
      t.string :race
      t.string :email
      t.string :parent_id
      t.integer :household_number_of_members
      t.boolean :in_foster_care
      t.string :school_lunch_program
      t.string :clinic_name
      t.string :clinic_street_address
      t.string :clinic_city
      t.string :clinic_state
      t.string :clinic_zip_code
      t.string :clinic_phone_number
      t.string :position
      t.boolean :active

      t.timestamps
    end
  end
end
