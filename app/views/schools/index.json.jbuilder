json.array!(@schools) do |school|
  json.extract! school, :name, :address
  json.url school_url(school, format: :json)
end
