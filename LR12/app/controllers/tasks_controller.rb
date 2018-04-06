class TasksController < ApplicationController
  def input
  end

  def output
    n = params[:n].to_i
    if (n > 0) && (n < 15)
      min = 10**(n - 1)
      max = 10**n
      res = []
      loop do
        min += 1
        x = min.to_s
        sum = 0
        x.each_char { |element| sum += element.to_i**x.size }
        res.push(sum) if sum == x.to_i
        break if min == max
      end
      @count = res.size
      @result = res
      @result = 'None numbers' if res.empty?
    else
      @result = 'Invalid n!'
    end
  end
end
