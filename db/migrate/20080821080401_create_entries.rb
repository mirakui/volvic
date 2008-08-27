class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.integer :price
      t.string :comment
      t.datetime :checked_at
      t.integer :entrycategory_id
      t.integer :entrysubject_id
      t.integer :user_id
      t.integer :from_wallet_id
      t.integer :to_wallet_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
