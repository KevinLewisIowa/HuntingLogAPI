class CreateHuntDuckCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :hunt_duck_counts do |t|
      t.integer :hunt_id
      t.integer :duck_id
      t.integer :drake_count
      t.integer :hen_count
      t.boolean :is_group
      t.boolean :is_individual

      t.timestamps
    end
  end
end
