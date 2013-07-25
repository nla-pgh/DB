class Role < ActiveRecord::Base
	has_many :people, through: :person_roles
	has_many :role_forms
	has_many :forms, through: :role_forms

accepts_nested_attributes_for :forms, :allow_destroy => true
accepts_nested_attributes_for :role_forms, :allow_destroy => true

end
