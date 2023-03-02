require "application_system_test_case"

class FootcardsTest < ApplicationSystemTestCase
  setup do
    @footcard = footcards(:one)
  end

  test "visiting the index" do
    visit footcards_url
    assert_selector "h1", text: "Footcards"
  end

  test "should create footcard" do
    visit footcards_url
    click_on "New footcard"

    fill_in "Title", with: @footcard.title
    click_on "Create Footcard"

    assert_text "Footcard was successfully created"
    click_on "Back"
  end

  test "should update Footcard" do
    visit footcard_url(@footcard)
    click_on "Edit this footcard", match: :first

    fill_in "Title", with: @footcard.title
    click_on "Update Footcard"

    assert_text "Footcard was successfully updated"
    click_on "Back"
  end

  test "should destroy Footcard" do
    visit footcard_url(@footcard)
    click_on "Destroy this footcard", match: :first

    assert_text "Footcard was successfully destroyed"
  end
end
