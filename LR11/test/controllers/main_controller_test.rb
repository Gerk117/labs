require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get clean" do
    get main_clean_url
    assert_response :success
  end

  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get view" do
    get main_view_url
    assert_response :success
  end

end
