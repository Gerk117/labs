def integrate(x0, x1, n, block)
  dx = (x1 - x0) / n
  sum = (block.call(x0) + block.call(x1)) / 2.0
  x = x0 + dx
  loop do
    y = block.call(x)
    sum += dx * y
    x += dx
    break if x > x1 - dx
  end
  sum
end
