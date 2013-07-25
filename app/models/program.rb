class Program < ActiveRecord::Base
	has_many :program_locations

	scope :for_program_location, lambda {|program_location_id| where ("program_location_id = ?". program_location_id) }

end
