class XmlController < ApplicationController
  before_action :parse_params, only: :index

  def index
    numbers = find_numbers(@n)

    data = if numbers.nil?
             { message: "Неверные параметры запроса (n = #{@n}" }
           else
             cnt = 0
             numbers.map { |elem| cnt += 1; { number: elem, quantity: cnt } }
           end

    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  def parse_params
    @n = params[:n]
  end

  protected

  def find_numbers(_n)
    n = params[:n].to_i
    if (n > 0) && (n < 15)
      min = 10**(n - 1)
      max = 10**n
      res = []
      cnt = 0
      loop do
        min += 1
        x = min.to_s
        sum = 0
        x.each_char { |element| sum += element.to_i**x.size }
        if sum == x.to_i
          res.push(sum)
          cnt += 1
        end
        break if min == max
      end
      @result = res
      @result = [] if res.empty?
      @count = cnt
    else
      @result = []
    end
    @result
  end
end
