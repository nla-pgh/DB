class CreateRoleForms < ActiveRecord::Migration
  def change
    create_table :role_forms do |t|
      t.references :role, index: true
      t.references :form, index: true

      t.timestamps
    end
  end
end
