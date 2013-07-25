class CreatePersonMedications < ActiveRecord::Migration
  def change
    create_table :person_medications do |t|
      t.references :person, index: true
      t.references :medication, index: true
      t.string :comments

      t.timestamps
    end
  end
end
