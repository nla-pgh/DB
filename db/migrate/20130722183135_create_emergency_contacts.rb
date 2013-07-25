class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.references :person, index: true
      t.string :name
      t.string :phone
      t.string :relationship

      t.timestamps
    end
  end
end
