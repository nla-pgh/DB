json.array!(@medications) do |medication|
  json.extract! medication, :name
  json.url medication_url(medication, format: :json)
end
