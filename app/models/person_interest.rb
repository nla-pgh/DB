class PersonInterest < ActiveRecord::Base
  belongs_to :person
  belongs_to :interest
end
