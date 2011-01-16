class CreateGifts < ActiveRecord::Migration
  def self.up
    create_table :gifts do |t|
      t.string      :name,  :limit => 128, :null => false
      t.string      :email, :limit => 128, :null => false
      t.integer     :suggestion_id, :null => false
      t.timestamps
    end

    add_index :gifts, :suggestion_id
  end

  def self.down
    drop_table :gifts
  end
end
