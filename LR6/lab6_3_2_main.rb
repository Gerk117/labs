require './lab6_3_2.rb'
puts integrate(-1.0, 4.0, 100) {|x| f1(x)}
puts integrate(0.0, 2.0, 100) {|x| f2(x)}