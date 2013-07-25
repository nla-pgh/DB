class Medication < ActiveRecord::Base
	has_many :people, through: :person_medications
end
