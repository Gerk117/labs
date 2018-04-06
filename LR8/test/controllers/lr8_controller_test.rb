require 'test_helper'

class Lr8ControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get lr8_view_url
    assert_response :success
  end

  test "should get input" do
    get lr8_input_url
    assert_response :success
  end

  test "Should get 4 for view with 3" do
    get lr8_view_url params: {n: 3}
    assert_equal assigns[:count], 4
  end

  test "Should get [153, 370, 371, 407] for view with 3" do
    get lr8_view_url params: {n: 3}
    assert_equal assigns[:result], [153, 370, 371, 407]
  end

  test "Should get 'Invalid n!' for view with 3" do
    get lr8_view_url params: {n: 0}
    assert_equal assigns[:result], 'Invalid n!'
  end
end
