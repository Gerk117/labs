require 'test_helper'

class XmlControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "check rss format" do
    get '/' , params: {n: 3, format: :rss}
    assert_response :success
  end
end
