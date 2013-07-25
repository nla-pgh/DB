json.array!(@allergies) do |allergy|
  json.extract! allergy, :name
  json.url allergy_url(allergy, format: :json)
end
