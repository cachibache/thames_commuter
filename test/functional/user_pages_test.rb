require 'test_helper'

class UnitTest < ActiveSupport::TestCase


  test "registration pages" do
    get "/registration"
    assert_response :success

    post_via_redirect "/login", :name => user(:avs).name, :email => user(:avs).email
    assert_equal '/welcome', path
    assert_equal 'Welcome avs!', flash[:notice]
  end

end