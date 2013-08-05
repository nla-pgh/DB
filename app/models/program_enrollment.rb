class ProgramEnrollment < ActiveRecord::Base
  belongs_to :program_location
  belongs_to :person
  has_many :novanet_courses, :through => :enrollment_courses
  has_many :enrollment_courses
  has_many :program_attendances

end
