def sum(degree)
  eps = 10**degree
  sum = 0.0
  k = 1.0
  loop do
    sum += ((-1)**(k - 1)) / k
    k += 1
    break if (sum - Math.log(2)).abs < eps
  end
  k - 1
end
