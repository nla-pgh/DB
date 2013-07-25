class ProgramLocation < ActiveRecord::Base
  belongs_to :program
  has_many :program_enrollments
  has_many :program_dates
  has_many :program_employees

  scope :for_enrollment, lambda {|program_enrollment_id| where("program_enrollment_id = ?", program_enrollment_id)}
  # put a scope here by_program/for_program to use for _form of program_dates
  # scope :by_program, lambda {|program_id| where("program_id = ?", program_id)}


  def current_students
    self.people.select{|s| s.program_location == self}.uniq
  end

end

