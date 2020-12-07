require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get lk" do
    get likes_lk_url
    assert_response :success
  end

  test "should get unlk" do
    get likes_unlk_url
    assert_response :success
  end

end
