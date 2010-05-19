class CreateAccessEntries < ActiveRecord::Migration
  def self.up
    create_table :access_entries do |t|
      t.integer :id
      t.integer :entry
      t.string :accesstype
      t.string :login

      t.timestamps
    end
  end

  def self.down
    drop_table :access_entries
  end
end
