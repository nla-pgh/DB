class CreateUserPeople < ActiveRecord::Migration
  def change
    create_table :user_people do |t|
      t.references :user, index: true
      t.references :person, index: true

      t.timestamps
    end
  end
end
