require "test_helper"

class PostimagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get postimages_new_url
    assert_response :success
  end

  test "should get index" do
    get postimages_index_url
    assert_response :success
  end

  test "should get show" do
    get postimages_show_url
    assert_response :success
  end
end
