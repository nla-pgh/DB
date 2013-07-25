class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.references :person, index: true
      t.string :phone_number
      t.string :type

      t.timestamps
    end
  end
end
