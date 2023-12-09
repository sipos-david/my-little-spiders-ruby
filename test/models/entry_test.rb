require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "save_entry" do
    freeze_time
    e = Entry.new text: "text", respect_gained: 1, date: Time.new(2023, 10, 31), roommate_id: roommates(:one).id
    assert e.save, "Cannot save entry"
    assert e.text == "text", "Saved entry.text is not correct"
    assert e.respect_gained == 1, "Saved entry.respect_gained is not correct"
    assert e.date == Time.new(2023, 10, 31), "Saved entry.date is not correct"
    assert e.roommate_id == roommates(:one).id, "Saved entry.roommate_id is not correct"
  end

  test "cannot_save_entry_without_roommate" do
    e = Entry.new text: "text", respect_gained: 1, date: Time.new(2023, 10, 31)
    assert !e.save, "Can save entry"
  end

  test "cannot_save_entry_without_text" do
    e = Entry.new respect_gained: 1, date: Time.new(2023, 10, 31), roommate_id: roommates(:one).id
    assert !e.save, "Can save entry"
  end

  test "cannot_save_entry_with_blank_text" do
    e = Entry.new text: "", respect_gained: 1, date: Time.new(2023, 10, 31), roommate_id: roommates(:one).id
    assert !e.save, "Can save entry"
  end

  test "cannot_save_entry_without_respect_gained" do
    e = Entry.new text: "text", date: Time.new(2023, 10, 31), roommate_id: roommates(:one).id
    assert !e.save, "Can save entry"
  end

  test "save_entry_without_date" do
    freeze_time
    e = Entry.new text: "text", respect_gained: 1, roommate_id: roommates(:one).id
    assert e.save, "Cannot save entry"
    assert e.date == Date.current, "Saved entry.date is not set to current time"
  end
end
