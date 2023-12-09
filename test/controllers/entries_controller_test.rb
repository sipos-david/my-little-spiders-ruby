require "test_helper"

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url
    assert_response :success
    # The table on should have entries.size rows since they're present in the db
    assert_dom "tbody tr", entries.size
  end

  test "should get new" do
    get new_entry_url, :params => { roommate_id: roommates(:one).id }
    assert_response :success
    # The entry has 3 attributes + 1 submit input
    assert_dom "form div input", 4
  end

  test "should create entry" do
    assert_difference("Entry.count") do
      post entries_url, params: { entry: { date: @entry.date, respect_gained: @entry.respect_gained, roommate_id: @entry.roommate_id, text: @entry.text } }
    end

    assert_redirected_to entry_url(Entry.last)
  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
    assert_dom "div p span", { text: @entry.date.to_s }, "Entry date is missing or not correct"
    assert_dom "div p span", { text: @entry.text }, "Entry text is missing or not correct"
    assert_dom "div p span", { text: @entry.respect_gained.to_s }, "Entry respect gained is missing or not correct"
    assert_dom "div p span", { text: @entry.roommate.name }, "Entry roommate name is missing or not correct"
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
    # The entry has 3 attributes + 1 submit input
    assert_dom "form div input", 4
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { date: @entry.date, respect_gained: @entry.respect_gained, roommate_id: @entry.roommate_id, text: @entry.text } }
    assert_redirected_to entry_url(@entry)
  end

  test "should destroy entry" do
    assert_difference("Entry.count", -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to roommate_url(@entry.roommate.id)
  end
end
