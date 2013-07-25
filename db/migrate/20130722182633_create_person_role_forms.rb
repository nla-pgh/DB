class CreatePersonRoleForms < ActiveRecord::Migration
  def change
    create_table :person_role_forms do |t|
      t.references :person_role, index: true
      t.references :form, index: true
      t.boolean :complete
      t.boolean :required

      t.timestamps
    end
  end
end
