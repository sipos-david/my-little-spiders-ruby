class AddRoommateConstraints < ActiveRecord::Migration[7.1]
  def change
    change_column_null :roommates, :name, false
    change_column_null :roommates, :location, false
    change_column_null :roommates, :num_of_nightmares, false
    add_check_constraint :roommates, "num_of_nightmares >= 0", name: "num_of_nightmares_check"
  end
end
