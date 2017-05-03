class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :bar_color,    null: false
      t.string :text_color,    null: false
      t.string :text_font_family,    null: false
      t.string :text_font_size,    null: false
      t.string :button_color,    null: false
      t.string :button_hover_color,    null: false
      t.string :button_text_color,    null: false
      t.string :bar_text,    null: false
      t.string :button_text,    null: false
      t.integer :targeted_time, null: false
      t.integer :shop_id
      t.string :discount_code,    null: false
    end
    add_index :settings, :shop_id
  end

  def self.down
    drop_table :settings
  end
end
