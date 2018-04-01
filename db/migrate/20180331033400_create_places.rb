class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.text :name
      t.text :facilities
      t.integer :event_id
      t.integer :time_zone
      t.text :location

      t.timestamps
    end
  end
end
