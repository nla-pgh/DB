class Interest < ActiveRecord::Base
  belongs_to :program
  has_many :people, through: :person_interests
end
