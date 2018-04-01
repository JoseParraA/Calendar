class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :title
      t.text :date
      t.integer :place_id
      t.text :description
      t.integer :user_id
      t.integer :time_zone
      t.text :date

      t.timestamps
    end
  end
end
