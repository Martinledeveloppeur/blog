require "test_helper"

class ClubcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clubcard = clubcards(:one)
  end

  test "should get index" do
    get clubcards_url
    assert_response :success
  end

  test "should get new" do
    get new_clubcard_url
    assert_response :success
  end

  test "should create clubcard" do
    assert_difference("Clubcard.count") do
      post clubcards_url, params: { clubcard: { age: @clubcard.age, image: @clubcard.image, name: @clubcard.name, position: @clubcard.position, title: @clubcard.title } }
    end

    assert_redirected_to clubcard_url(Clubcard.last)
  end

  test "should show clubcard" do
    get clubcard_url(@clubcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_clubcard_url(@clubcard)
    assert_response :success
  end

  test "should update clubcard" do
    patch clubcard_url(@clubcard), params: { clubcard: { age: @clubcard.age, image: @clubcard.image, name: @clubcard.name, position: @clubcard.position, title: @clubcard.title } }
    assert_redirected_to clubcard_url(@clubcard)
  end

  test "should destroy clubcard" do
    assert_difference("Clubcard.count", -1) do
      delete clubcard_url(@clubcard)
    end

    assert_redirected_to clubcards_url
  end
end
