class User < ActiveRecord::Base
	has_secure_password
	validates_presence_of :password, on: :create
	validates_presence_of :email, on: :create

	has_many :user_events
	accepts_nested_attributes_for :user_events
	has_many :user_program_locations
	accepts_nested_attributes_for :user_program_locations

end