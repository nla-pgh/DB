class PersonRoleForms < ActiveRecord::Base
  belongs_to :person_role
  belongs_to :form
end
