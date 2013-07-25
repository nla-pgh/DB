class CreatePersonSchools < ActiveRecord::Migration
  def change
    create_table :person_schools do |t|
      t.references :person, index: true
      t.references :school, index: true
      t.integer :start_grade
      t.string :counselor_name

      t.timestamps
    end
  end
end
