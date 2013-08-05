class ProgramEmployee < ActiveRecord::Base
  belongs_to :program_location
  belongs_to :person
end
