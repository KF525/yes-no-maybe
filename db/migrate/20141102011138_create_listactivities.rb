class CreateListactivities < ActiveRecord::Migration
  def change
    create_table :listactivities do |t|
      t.string :status
      t.text :notes
      t.integer :activity_id
      t.integer :list

      t.timestamps
    end
  end
end
