def integrate(x0, x1, n)
  dx = (x1 - x0) / n
  sum = (yield(x0) + yield(x1)) / 2.0
  x = x0 + dx
  loop do
    y = yield(x)
    sum += dx * y
    x += dx
    break if x > x1 - dx
  end
  sum
end

def f1(x)
  x + Math.cos(x)
end

def f2(x)
  Math.tan(x + 1) / (x + 1)
end

integrate(-1.0, 4.0, 100) { |x| f1(x) }
integrate(0.0, 2.0, 100) { |x| f2(x) }
