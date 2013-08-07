class AddTagToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :tag, :string
  end
end
