class MainController < ApplicationController
  before_action :parse_params, only: :view

  def parse_params
    @n = params[:n].to_i
  end

  def add_record_table
    res = MainResult.create numbers: @numbers, counter: @quantity,
                            readNumb: @n
    @result << ActiveSupport::JSON.decode(res.numbers)
    @result << ActiveSupport::JSON.decode(res.counter.to_s)
    res.save
  end

  def view
    @result = []
    if (res = MainResult.find_by_numbers_and_counter(@numbers, @quantity))
      @result << ActiveSupport::JSON.decode(res.numbers)
      @result << ActiveSupport::JSON.decode(res.counter.to_s)
    else
      to_count_to_numbers
      add_record_table
    end
  end

  def to_count_to_numbers
    @numbers = [0]
    if (@n > 0) && (@n < 15)
      min = 10**(@n - 1)
      max = 10**@n
      arr = []
      loop do
        min += 1
        x = min.to_s
        sum = 0
        x.each_char { |element| sum += element.to_i**x.size }
        arr.push(sum) if sum == x.to_i
        break if min == max
      end
      @numbers = arr
      @quantity = @numbers.size
      @numbers = [0] && @quantity = 0 if arr.empty?
    else
      @numbers = [-1]
      @quantity = 0
    end
  end

  def results
    @result = MainResult.all
    render xml: @result
  end

  def to_clean_bd
    MainResult.destroy_all
    redirect_to clean.erb
  end

  def index
  end
end
