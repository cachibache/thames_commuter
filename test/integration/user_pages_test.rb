require 'test_helper'

class UserPagesTest < ActionDispatch::IntegrationTest
  # factories :users

  test "login and browse site" do
    # login via https
    https!
    get "/login"
    assert_response :success
  end


end