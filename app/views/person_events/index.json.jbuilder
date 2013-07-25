json.array!(@person_events) do |person_event|
  json.extract! person_event, :event_id, :person
  json.url person_event_url(person_event, format: :json)
end
