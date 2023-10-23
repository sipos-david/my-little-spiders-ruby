class CreateRoommates < ActiveRecord::Migration[7.0]
  def change
    create_table :roommates do |t|
      t.string :name
      t.string :location
      t.integer :num_of_nightmares

      t.timestamps
    end
  end
end
