class Addprovidertoconfiguration < ActiveRecord::Migration
  def up
    add_column :configurations, :part_numer, :string
  end

  def down
    remove_column :configurations, :part_numer, :string
  end
end
