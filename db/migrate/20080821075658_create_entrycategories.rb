class CreateEntrycategories < ActiveRecord::Migration
  def self.up
    create_table :entrycategories do |t|
      t.string :name
      t.integer :user_id
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :entrycategories
  end
end
