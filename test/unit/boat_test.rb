require 'test_helper'

class BoatTest < ActiveSupport::TestCase

  test "Boat name is saved as slug with as alphanumeric for routing" do
    @boat = Boat.create(name: "Old Stinky")
    assert_equal "old-stinky", @boat.slug
  end

  test "Find boat with specified id" do
    @boat = Boat.create(name: "Old Stinky")
    @boat.update_column(:slug, nil)
    assert_nil @boat.slug
    @boat = Boat.find_by_id(@boat.id)
    assert @boat
    assert_equal "Old Stinky", @boat.name
  end
 
  test "Find boat with specified slug" do
    @boat0 = Boat.create(name: "Old Stinky")
    @boat1 = Boat.create(name: "John's Boat")
    @boat2 = Boat.create(name: "Lady Marmaduke")
    assert_equal 3, Boat.count
    assert "old-stinky", @boat0.slug
    assert "johns-boat", @boat1.slug
    assert "lady-marmaduke", @boat2.slug
    @boat0.update_column(:slug, nil)
    assert_nil @boat0.slug
    @found_boat2 = Boat.find_by_slug("lady-marmaduke")
    assert_equal @boat2, @found_boat2
    @found_boat1 = Boat.find_by_slug("johns-boat")
    assert_equal @boat1,  @found_boat1
    @found_boat0 = Boat.find_by_slug("old-stinky")
    refute @found_boat0
  end

  test "Fail when non-existant boat requested" do
    @boat_in_existance = Boat.create(name: "Old Stinky")
    @boat_in_existance.update_column(:slug, nil)
    @non_existant_boat = Boat.find_by_id("fine-and-dandy")
    assert @non_existant_boat
    refute @boat_in_existance
  end
end 
