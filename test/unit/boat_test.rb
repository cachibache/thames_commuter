require 'test_helper'

class BoatTest < ActiveSupport::TestCase

  test "Boat name is saved as slug with as alphanumeric for routing" do
    @boat = Boat.create(name: "Old Stinky")
    assert_equal "old-stinky", @boat.slug
  end
end
