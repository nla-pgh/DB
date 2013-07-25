class CreatePersonRoles < ActiveRecord::Migration
  def change
    create_table :person_roles do |t|
      t.references :person, index: true
      t.references :role, index: true

      t.timestamps
    end
  end
end
