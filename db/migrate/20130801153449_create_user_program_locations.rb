class CreateUserProgramLocations < ActiveRecord::Migration
  def change
    create_table :user_program_locations do |t|
      t.references :user, index: true
      t.references :program_location, index: true

      t.timestamps
    end
  end
end
