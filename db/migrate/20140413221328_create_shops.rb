class CreateShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.string :token_encrypted
      t.integer :count, default: 0
    end
  end

  def self.down
    drop_table :shops
  end
end
