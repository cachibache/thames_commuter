require 'test_helper'

class UserPagesTest < ActionDispatch::IntegrationTest
  # factories :users

  test "register user" do
    get "/registration"
    assert_response :success
  end

  test "registration page" do

    subject { :page }

    visit ('/registration')
    fill_in('email', :with => 'BobsyourUncle')
    click_button('Register')

    # assert page.has

  end


  # test "login and browse site" do
  #   # login via https
  #   https!
  #   get "/login"
  #   assert_response :success
  # end


end