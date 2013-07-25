class PersonSchool < ActiveRecord::Base
  belongs_to :person
  belongs_to :school
end
