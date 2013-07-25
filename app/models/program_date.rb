class ProgramDate < ActiveRecord::Base
	# attr_accessible :program_id, :date, :status, :comments, :program_location_id
	STATUS_OPTIONS = ['present', 'late', 'absent']

  belongs_to :program_location
  has_many :program_attendances

end
