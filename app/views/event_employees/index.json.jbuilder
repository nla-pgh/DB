json.array!(@event_employees) do |event_employee|
  json.extract! event_employee, :event_id, :person_id, :position
  json.url event_employee_url(event_employee, format: :json)
end
