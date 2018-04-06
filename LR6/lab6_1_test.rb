require './lab6_1_func.rb'
require "minitest/autorun" # устаревшая альтернатива - 'test/unit'
class TestProg < MiniTest::Test


  def test_name1 # тест1
    k = 50.0
    assert_equal k, sum(-2)
  end
  def test_name2 # тестN
    k = 5000.0
    assert_equal k, sum(-4)
  end


end