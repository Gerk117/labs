require './lab7_2_func'

puts('Put date for rectangle')
obj1 = Square.new
obj1.a = gets
obj1.b = gets

puts('Put date for parallelepiped')
obj2 = Parallelepiped.new
obj2.a = gets
obj2.b = gets
obj2.h = gets

x = 1

while (x == 1) || (x == 2) || (x == 3) || (x == 4)
  puts "Put '1' for rectangle options"
  puts "Put '2' for rectangle type"
  puts "Put '3' for parallelepiped parameters"
  puts "Put '4' for parallelepiped type"
  x = gets.to_i

  case x
  when 1
    obj1.sod
  when 2
    obj1.type
  when 3
    obj2.sod
  when 4
    obj2.type
  else
    puts 'End!'
  end
end
