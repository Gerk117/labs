require './lab5_2_func3.rb'
require "minitest/autorun" # устаревшая альтернатива - 'test/unit'
class TestProg < Minitest::Test

  def setup # вызывается перед выполнением каждого теста
  end

  def test_name1 # тест1
    str = "Gas232#4234aafdswqaa432"
    res = "aafdswqaa"
    assert_equal( res, input(str))
  end

  def test_name2 # тест2
    n = 1
    alphabet = ('a'..'z').to_a + (1..9).to_a + ['a'] * 10
    loop do
      str = ''
      cnt = 0
      result = ''
      (rand(20) + 10).times.map {str += alphabet.sample.to_s }
      str.scan(/[aeyuio]/) do |y|
        if y.scan(/[Aa]/).size >= 2
          cnt += 1
          result = y
        end
      end
      puts result
      result = "Groups not found\n" if cnt.zero?
      assert_equal(result, input(str))
      break if n == 100
      n += 1
    end
  end

  def teardown # вызывается после выполнения каждого теста
  end
end