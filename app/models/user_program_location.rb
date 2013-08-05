class UserProgramLocation < ActiveRecord::Base
  belongs_to :user
  belongs_to :program_location
end
