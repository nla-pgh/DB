json.array!(@program_employees) do |program_employee|
  json.extract! program_employee, :program_location_id, :person_id, :job_description
  json.url program_employee_url(program_employee, format: :json)
end
