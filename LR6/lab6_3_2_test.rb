require './lab6_3_1_func.rb'
require 'minitest/autorun'
class TestProg < MiniTest::Test
  def setup; end

  def test_1
    i = 0.1
    3.times do
      f1 = ->(x) { x + Math.cos(x) }
      assert_in_delta(8.955, integrate(-1.0, 4.0, 100, f1), i)
      i /= 10
    end
  end

  def teardown; end
end
