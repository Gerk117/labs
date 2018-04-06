require './lab6_3_1_func.rb'
require "minitest/autorun"
class TestProg < MiniTest::Test
  def setup

  end

  def test_1
    f1=lambda{|x| x+Math.cos(x) }
    assert_in_delta(8.955,integrate(-1.0,4.0,100,f1),1e-3)
  end

  def teardown
  end

end