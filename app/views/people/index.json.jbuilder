json.array!(@people) do |person|
  json.extract! person, :first_name, :last_name, :gender, :DOB, :race, :email, :parent_id, :household_number_of_members, :in_foster_care, :school_lunch_program, :clinic_name, :clinic_street_address, :clinic_city, :clinic_state, :clinic_zip_code, :clinic_phone_number, :position, :active
  json.url person_url(person, format: :json)
end
