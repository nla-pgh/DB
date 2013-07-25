class CreatePersonInterests < ActiveRecord::Migration
  def change
    create_table :person_interests do |t|
      t.references :person, index: true
      t.references :interest, index: true

      t.timestamps
    end
  end
end
