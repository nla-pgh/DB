class CreatePersonSupports < ActiveRecord::Migration
  def change
    create_table :person_supports do |t|
      t.references :person, index: true
      t.references :support_service, index: true
      t.string :comments

      t.timestamps
    end
  end
end
