json.array!(@program_attendances) do |program_attendance|
  json.extract! program_attendance, :program_enrollment_id, :program_date_id, :status, :comments
  json.url program_attendance_url(program_attendance, format: :json)
end
