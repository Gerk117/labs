require './lab7_2_func.rb'
require 'minitest/autorun'

class TestProg < Minitest::Test
  def setup; end

  def test_1
    obj1 = Square.new
    obj1.a = 2
    obj1.b = 2
    assert_equal('Square', obj1.type)
  end

  def test_2
    obj2 = Parallelepiped.new
    obj2.a = 2
    obj2.b = 2
    obj2.h = 3
    assert_equal('Parallelepiped', obj2.type)
  end

  def test_name3 # тест3
    assert_equal(Parallelepiped.superclass, Square)
  end

  def teardown; end
end
