class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.date :date
      t.string :text
      t.integer :respect_gained
      t.references :roommate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
