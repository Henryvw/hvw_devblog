require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get Dashboard" do
    get :Dashboard
    assert_response :success
  end

end
