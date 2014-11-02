class ChangeListToListId < ActiveRecord::Migration
  def change
    rename_column :listactivities, :list, :list_id
  end
end
