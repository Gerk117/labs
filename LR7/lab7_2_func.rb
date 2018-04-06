class Square
  attr_accessor :a, :b

  def sod
    puts "First side: #{a}"
    puts "Second side: #{b}"
  end

  def type
    result = ''
    if (a == b) then
      result = 'Square'
    else
      result = 'Rectangle'
    end
    result
  end
end

class Parallelepiped < Square
  attr_accessor :h

  def sod
    puts "First side: #{a}"
    puts "Second side: #{b}"
    puts "Height: #{h}"
  end

  def type
    result = ''
    if (a == b) && (b == h)
      result = 'Cube'
    else
      result = 'Parallelepiped'
    end
    result
  end
end