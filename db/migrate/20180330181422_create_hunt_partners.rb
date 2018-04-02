class CreateHuntPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :hunt_partners do |t|
      t.integer :hunt_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
