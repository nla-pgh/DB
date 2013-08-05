class Person < ActiveRecord::Base
	has_many :roles, through: :person_roles
	has_many :person_roles

	has_many :interests, through: :person_interests
	has_many :person_interests

	has_many :availabilities
	has_many :phone_numbers
	has_many :addresses
	has_many :address

	has_many :schools, through: :person_schools
	has_many :person_schools

	has_many :support_services, through: :person_supports
	has_many :person_supports

	has_many :medications, through: :person_medications
	has_many :person_medications

	has_many :emergency_contacts
	
	has_many :allergies, through: :person_allergies
	has_many :person_allergies

	has_many :events, through: :event_employees
	has_many :event_employees

	has_many :program_locations, through: :program_employees
	has_many :program_employees

	accepts_nested_attributes_for :address, :allow_destroy => true
	accepts_nested_attributes_for :addresses, :allow_destroy => true
	accepts_nested_attributes_for :person_schools, :allow_destroy => true
	accepts_nested_attributes_for :phone_numbers, :allow_destroy => true
	accepts_nested_attributes_for :person_allergies, :allow_destroy => true
	accepts_nested_attributes_for :person_interests, :allow_destroy => true
	accepts_nested_attributes_for :person_supports, :allow_destroy => true
	accepts_nested_attributes_for :person_medications, :allow_destroy => true
	accepts_nested_attributes_for :availabilities, :allow_destroy => true
	accepts_nested_attributes_for :phone_numbers, :allow_destroy => true
	accepts_nested_attributes_for :addresses, :allow_destroy => true
	accepts_nested_attributes_for :emergency_contacts, :allow_destroy => true

	def name
		"#{last_name}, #{first_name}"
	end

end