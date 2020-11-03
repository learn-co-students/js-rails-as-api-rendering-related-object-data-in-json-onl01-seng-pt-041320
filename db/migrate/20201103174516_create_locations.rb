class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :latitute
      t.float :longitude

      t.timestamps
    end
  end
end
