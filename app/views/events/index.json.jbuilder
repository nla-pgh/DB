json.array!(@events) do |event|
  json.extract! event, :name, :type, :date
  json.url event_url(event, format: :json)
end
