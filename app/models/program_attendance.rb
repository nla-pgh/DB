class ProgramAttendance < ActiveRecord::Base
  belongs_to :program_enrollment
  belongs_to :program_date
end
