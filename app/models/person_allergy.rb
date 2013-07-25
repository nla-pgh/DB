class PersonAllergy < ActiveRecord::Base
  belongs_to :person
  belongs_to :allergy
end
