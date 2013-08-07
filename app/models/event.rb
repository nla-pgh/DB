class Event < ActiveRecord::Base
	has_many :person_events, :dependent => :destroy
	has_many :people, :through => :person_events
   has_many :event_employees, :dependent => :destroy
   
	accepts_nested_attributes_for :people
	accepts_nested_attributes_for :person_events

   def full_address
   		"#{street_address} #{city} #{state}, #{zip_code}"
   end

   def mailing_to_csv
   		CSV.generate do |csv|
   			csv << ['last_name', 'first_name', 'address_1', 'address_2', 'email']

   			all.each do |event|
				csv << event.person.attributes_at   				
   			end

   		end
   end
end
