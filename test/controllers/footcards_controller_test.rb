require "test_helper"

class FootcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footcard = footcards(:one)
  end

  test "should get index" do
    get footcards_url
    assert_response :success
  end

  test "should get new" do
    get new_footcard_url
    assert_response :success
  end

  test "should create footcard" do
    assert_difference("Footcard.count") do
      post footcards_url, params: { footcard: { title: @footcard.title } }
    end

    assert_redirected_to footcard_url(Footcard.last)
  end

  test "should show footcard" do
    get footcard_url(@footcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_footcard_url(@footcard)
    assert_response :success
  end

  test "should update footcard" do
    patch footcard_url(@footcard), params: { footcard: { title: @footcard.title } }
    assert_redirected_to footcard_url(@footcard)
  end

  test "should destroy footcard" do
    assert_difference("Footcard.count", -1) do
      delete footcard_url(@footcard)
    end

    assert_redirected_to footcards_url
  end
end
