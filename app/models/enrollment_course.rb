class EnrollmentCourse < ActiveRecord::Base
	belongs_to :program_enrollment
	belongs_to :novanet_course
	
end
