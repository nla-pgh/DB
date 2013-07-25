class CreateSupportServices < ActiveRecord::Migration
  def change
    create_table :support_services do |t|
      t.string :name

      t.timestamps
    end
  end
end
