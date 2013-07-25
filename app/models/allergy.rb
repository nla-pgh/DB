class Allergy < ActiveRecord::Base
	has_many :people, through: :person_allergies
end