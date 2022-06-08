require "application_system_test_case"

class MicropostsTest < ApplicationSystemTestCase
  setup do
    @micropost = microposts(:one)
  end

  test "visiting the index" do
    visit microposts_url
    assert_selector "h1", text: "Microposts"
  end

  test "should create micropost" do
    visit microposts_url
    click_on "New micropost"

    fill_in "Content", with: @micropost.content
    fill_in "User", with: @micropost.user_id
    click_on "Create Micropost"

    assert_text "Micropost was successfully created"
    click_on "Back"
  end

  test "should update Micropost" do
    visit micropost_url(@micropost)
    click_on "Edit this micropost", match: :first

    fill_in "Content", with: @micropost.content
    fill_in "User", with: @micropost.user_id
    click_on "Update Micropost"

    assert_text "Micropost was successfully updated"
    click_on "Back"
  end

  test "should destroy Micropost" do
    visit micropost_url(@micropost)
    click_on "Destroy this micropost", match: :first

    assert_text "Micropost was successfully destroyed"
  end
end
