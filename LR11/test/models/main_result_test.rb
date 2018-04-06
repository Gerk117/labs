require 'test_helper'

class MainResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save new empty user' do
    result = MainResult.new
    assert result.save
  end

  test 'should save new user' do
    result = MainResult.new
    result.counter = 4
    result.numbers = [153, 370, 371, 407]
    result.readNumb = 3
    assert result.save
  end

  test 'should not save duplicate user' do
    result = MainResult.new
    result.counter = 4
    result.numbers = [153, 370, 371, 407]
    result.readNumb = 3
    result.save
    result = MainResult.new
    unless MainResult.find_by_numbers_and_counter(@numbers, @quantity)
      result.counter = 4
      result.numbers = [153, 370, 371, 407]
      result.readNumb = 3
    end
    assert_not result.save
  end
end
