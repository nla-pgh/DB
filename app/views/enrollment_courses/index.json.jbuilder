json.array!(@enrollment_courses) do |enrollment_course|
  json.extract! enrollment_course, :program_enrollment_id, :novanet_course_id
  json.url enrollment_course_url(enrollment_course, format: :json)
end
