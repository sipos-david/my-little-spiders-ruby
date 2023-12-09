require "test_helper"

class AddRoommateTest < ActionDispatch::IntegrationTest
  test "add_a_roommate" do
    roommate = roommates(:one)

    # Visit index page
    get root_url
    assert_response :success
    assert_dom "a", text: "Add new friend"
    assert_dom "tbody tr", roommates.size

    # Visit new roommate page
    get new_roommate_url
    assert_response :success

    # Add new roommate
    post roommates_url, params: { roommate: { name: roommate.name, location: roommate.location, num_of_nightmares: roommate.num_of_nightmares } }
    assert_response :redirect
    follow_redirect!

    # Check the redirected page contents
    assert_dom "h1", { text: roommate.name }, "Roommate name is missing or not correct"
    assert_dom "section p span", { text: roommate.location }, "Roommate location is missing or not correct"
    assert_dom "section p span", { text: roommate.num_of_nightmares.to_s }, "Roommate num of nightmares is missing or not correct"
  end
end
