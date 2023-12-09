require "test_helper"

class RoommateTest < ActiveSupport::TestCase
  test "save_roommate" do
    r = Roommate.new name: "name", location: "location", num_of_nightmares: 1
    assert r.save, "Cannot save roommate"
    assert r.name == "name", "Saved roommate.name is not correct"
    assert r.location == "location", "Saved roommate.location is not correct"
    assert r.num_of_nightmares == 1, "Saved roommate.num_of_nightmares is not correct"
  end

  test "cannot_save_roommate_without_name" do
    r = Roommate.new location: "location", num_of_nightmares: 1
    assert !r.save, "Can save roommate"
  end

  test "cannot_save_roommate_with_blank_name" do
    r = Roommate.new name: "", location: "location", num_of_nightmares: 1
    assert !r.save, "Can save roommate"
  end

  test "cannot_save_roommate_without_location" do
    r = Roommate.new name: "name", num_of_nightmares: 1
    assert !r.save, "Can save roommate"
  end

  test "cannot_save_roommate_with_blank_location" do
    r = Roommate.new name: "name", location: "", num_of_nightmares: 1
    assert !r.save, "Can save roommate"
  end

  test "save_roommate_without_num_of_nightmares" do
    r = Roommate.new name: "name", location: "location"
    assert r.save, "Cannot save roommate"
    assert r.num_of_nightmares == 0, "Saved roommate.num_of_nightmares is not initial value"
  end
end
