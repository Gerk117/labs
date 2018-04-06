require './lab5_1_func.rb'
require "minitest/autorun" # устаревшая альтернатива - 'test/unit'
class TestProg < Minitest::Test

  def setup # вызывается перед выполнением каждого теста
  end

  def test_name1 # тест1
    x = 2
    z = 3
    res = 20.618118
    assert_in_delta res, func(x, z), 1e-6
  end
  def test_name2 # тест2
    x = 1
    z = 5
    res = 4.2156606
    assert_in_delta res, func(x, z), 1e-6
  end

  def teardown # вызывается после выполнения каждого теста
  end
end