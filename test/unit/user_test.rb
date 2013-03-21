# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "User has the following symbols" do
    @user = User.create(:name => "Bobs your Uncle", :email => 'bobsyouruncle@gmail.com')

    assert_respond_to @user, :name
    assert_respond_to @user, :email
  end
end
