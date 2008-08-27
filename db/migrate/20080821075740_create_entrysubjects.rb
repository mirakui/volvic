class CreateEntrysubjects < ActiveRecord::Migration
  def self.up
    create_table :entrysubjects do |t|
      t.string :name
      t.integer :user_id
      t.integer :order
      t.integer :entrycategory_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entrysubjects
  end
end
