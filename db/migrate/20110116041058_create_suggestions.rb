class CreateSuggestions < ActiveRecord::Migration
  def self.up
    create_table :suggestions do |t|
      t.string     :description, :limit => 255, :null => false
      t.integer    :count,                      :null => false
      t.decimal    :value,       :precision => 8, :scale => 2, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :suggestions
  end
end
