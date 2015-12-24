require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get key" do
    get :key
    assert_response :success
  end

  test "should get link" do
    get :link
    assert_response :success
  end

end
