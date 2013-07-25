class School < ActiveRecord::Base
  has_many :people, through: :person_schools
end
