class CreateHunts < ActiveRecord::Migration[5.0]
  def change
    create_table :hunts do |t|
      t.integer :user_id
      t.integer :location_id
      t.date :date
      t.string :description
      t.integer :wind_speed
      t.string :wind_direction
      t.integer :temperature
      t.string :weather

      t.timestamps
    end
  end
end
