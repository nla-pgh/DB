class ProgramEnrollment < ActiveRecord::Base
  belongs_to :program_location
  belongs_to :person
  has_many :program_attendances
end
