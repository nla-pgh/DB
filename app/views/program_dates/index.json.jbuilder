json.array!(@program_dates) do |program_date|
  json.extract! program_date, :program_id, :date, :status, :comments
  json.url program_date_url(program_date, format: :json)
end
