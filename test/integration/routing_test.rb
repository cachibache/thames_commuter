require 'test_helper'

class RoutingTest < ActionDispatch::IntegrationTest

  test "boats route with :id request should route to boats show" do
    assert_generates "/boats/1", { :controller => "boats", :action => "show", :id => 1 }
  end

  test "boats route with :slug request should route to boats show" do
    assert_generates "/boats/bobs-jane", { :controller => "boats", :action => "show", :id => "bobs-jane" }
    assert_generates "/boats/bobs-jane", { :controller => "boats", :action => "show", :slug => "bobs-jane" }
    assert_generates "/boats/new-jane", { :controller => "boats", :action => "show", :slug => "new-jane" }

  end
end
