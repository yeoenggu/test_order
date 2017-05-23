class AddFontFamilyNameToSetting < ActiveRecord::Migration
  def self.up
     add_column :settings, :text_font_family_name, :string
  end

  def self.down
  end
end
