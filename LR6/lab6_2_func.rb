def sum(degree)
  list = Enumerator.new do |yielder|
    sum = 0.0
    prev = Math.log(2)
    counter = 1.0
    loop do
      yielder.yield sum, prev, counter
      sum += ((-1)**(counter - 1)) / counter
      counter += 1
    end
  end
  puts list.take_while { |sum, prev| (prev - sum).abs > 10**degree }
end