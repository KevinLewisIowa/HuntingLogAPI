class CreateDucks < ActiveRecord::Migration[5.0]
  def change
    create_table :ducks do |t|
      t.integer :user_id
      t.string :species

      t.timestamps
    end
  end
end
