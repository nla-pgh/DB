json.array!(@interests) do |interest|
  json.extract! interest, :name, :program_id
  json.url interest_url(interest, format: :json)
end
