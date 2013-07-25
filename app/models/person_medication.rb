class PersonMedication < ActiveRecord::Base
  belongs_to :person
  belongs_to :medication
end
