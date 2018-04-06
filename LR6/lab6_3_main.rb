require './lab6_3_1.rb'
f1 = ->(x) { x + Math.cos(x) }
f2 = ->(x) { Math.tan(x + 1) / (x + 1) }
puts integrate(-1.0, 4.0, 100, f1)
puts integrate(0.0, 2.0, 100, f2)
