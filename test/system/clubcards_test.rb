require "application_system_test_case"

class ClubcardsTest < ApplicationSystemTestCase
  setup do
    @clubcard = clubcards(:one)
  end

  test "visiting the index" do
    visit clubcards_url
    assert_selector "h1", text: "Clubcards"
  end

  test "should create clubcard" do
    visit clubcards_url
    click_on "New clubcard"

    fill_in "Age", with: @clubcard.age
    fill_in "Image", with: @clubcard.image
    fill_in "Name", with: @clubcard.name
    fill_in "Position", with: @clubcard.position
    fill_in "Title", with: @clubcard.title
    click_on "Create Clubcard"

    assert_text "Clubcard was successfully created"
    click_on "Back"
  end

  test "should update Clubcard" do
    visit clubcard_url(@clubcard)
    click_on "Edit this clubcard", match: :first

    fill_in "Age", with: @clubcard.age
    fill_in "Image", with: @clubcard.image
    fill_in "Name", with: @clubcard.name
    fill_in "Position", with: @clubcard.position
    fill_in "Title", with: @clubcard.title
    click_on "Update Clubcard"

    assert_text "Clubcard was successfully updated"
    click_on "Back"
  end

  test "should destroy Clubcard" do
    visit clubcard_url(@clubcard)
    click_on "Destroy this clubcard", match: :first

    assert_text "Clubcard was successfully destroyed"
  end
end
