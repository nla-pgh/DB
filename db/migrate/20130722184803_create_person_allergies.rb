class CreatePersonAllergies < ActiveRecord::Migration
  def change
    create_table :person_allergies do |t|
      t.references :person, index: true
      t.references :allergy, index: true
      t.integer :severity
      t.string :comments

      t.timestamps
    end
  end
end
