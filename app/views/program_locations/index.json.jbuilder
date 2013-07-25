json.array!(@program_locations) do |program_location|
  json.extract! program_location, :program_id, :name, :address
  json.url program_location_url(program_location, format: :json)
end
