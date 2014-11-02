class AddNameToListActviity < ActiveRecord::Migration
  def change
    add_column :listactivities, :name, :string
  end
end
