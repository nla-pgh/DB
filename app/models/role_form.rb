class RoleForm < ActiveRecord::Base
  belongs_to :role
  belongs_to :form
end
