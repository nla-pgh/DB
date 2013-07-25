class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :person, index: true
      t.integer :day_of_week
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
