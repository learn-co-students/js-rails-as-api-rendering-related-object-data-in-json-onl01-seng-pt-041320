class RenameLatituteToLatitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :latitute, :latitude 
  end
end
