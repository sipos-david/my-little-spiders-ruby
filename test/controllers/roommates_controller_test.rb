require "test_helper"

class RoommatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roommate = roommates(:one)
  end

  test "should get index" do
    get roommates_url
    assert_response :success
    # The table on should have roommates.size rows since they're present in the db
    assert_dom "tbody tr", roommates.size
  end

  test "should get new" do
    get new_roommate_url
    assert_response :success
    # The roommate has 3 attributes + 1 submit input
    assert_dom "form div input", 4
  end

  test "should create roommate" do
    assert_difference("Roommate.count") do
      post roommates_url, params: { roommate: { location: @roommate.location, name: @roommate.name, num_of_nightmares: @roommate.num_of_nightmares } }
    end

    assert_redirected_to roommate_url(Roommate.last)
  end

  test "should show roommate" do
    get roommate_url(@roommate)
    assert_response :success
    assert_dom "h1", { text: @roommate.name }, "Roommate name is missing or not correct"
    assert_dom "section p span", { text: @roommate.location }, "Roommate location is missing or not correct"
    assert_dom "section p span", { text: @roommate.num_of_nightmares.to_s }, "Roommate num of nightmares is missing or not correct"
  end

  test "should get edit" do
    get edit_roommate_url(@roommate)
    assert_response :success
    # The roommate has 3 attributes + 1 submit input
    assert_dom "form div input", 4
  end

  test "should update roommate" do
    patch roommate_url(@roommate), params: { roommate: { location: @roommate.location, name: @roommate.name, num_of_nightmares: @roommate.num_of_nightmares } }
    assert_redirected_to roommate_url(@roommate)
  end

  test "should destroy roommate" do
    assert_difference("Roommate.count", -1) do
      delete roommate_url(@roommate)
    end

    assert_redirected_to roommates_url
  end
end
