class AddEntryConstraints < ActiveRecord::Migration[7.1]
  def change
    change_column_null :entries, :date, false
    change_column_null :entries, :text, false
    change_column_null :entries, :respect_gained, false
  end
end
