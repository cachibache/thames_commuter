require 'test_helper'

class UserPagesTest < ActionDispatch::IntegrationTest
  # factories :users

  test "register user" do
    get "/registration"
    assert_response :success
  end

  # test "registration page" do

  #   # subject { :page }

  #   visit ('/registration')
  #   # fill_in('email', :with => 'bobsyouruncle@gmail.com')
  #   # fill_in('name',  :with => 'BobsyourUncle')
  #   click_button('Register')

  #   assert_redirected_to user_path(assigns(:user))
  #   assert_equal "Welcome, you have successfully registered to use 'Float my Boat'", flash[:notice]

  # end

  # test "login and browse site" do
  #   # login via https
  #   https!
  #   get "/login"
  #   assert_response :success
  # end

  test "registration pages" do
    get "/registration"
    assert_response :success

    post_via_redirect "/login", :name => user(:avs).name, :email => user(:avs).email
    assert_equal '/welcome', path
    assert_equal 'Welcome avs!', flash[:notice]

  end
end