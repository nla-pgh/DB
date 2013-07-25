json.array!(@program_enrollments) do |program_enrollment|
  json.extract! program_enrollment, :program_location_id, :student_id_id
  json.url program_enrollment_url(program_enrollment, format: :json)
end
