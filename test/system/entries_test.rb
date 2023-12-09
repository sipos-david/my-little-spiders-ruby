require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:one)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Entries"
  end

  test "should create entry" do
    visit roommate_url(@entry.roommate)
    click_on "View add new entry"

    fill_in "Date", with: @entry.date
    fill_in "Respect gained", with: @entry.respect_gained
    fill_in "Text", with: @entry.text
    click_on "Create Entry"

    assert_text "Entry was successfully created"
    click_on "Back to roommate"
  end

  test "should update Entry" do
    visit entry_url(@entry)
    click_on "Edit this entry", match: :first

    fill_in "Date", with: @entry.date
    fill_in "Respect gained", with: @entry.respect_gained
    fill_in "Text", with: @entry.text
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    click_on "Back to roommate"
  end

  test "should destroy Entry" do
    visit entry_url(@entry)
    click_on "Delete this entry", match: :first

    assert_text "Entry was successfully destroyed"
  end
end
