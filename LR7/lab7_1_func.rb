def dateWorker
  num_array = File.readlines('lab7_1.txt')
  num_array.map!(&:chomp)
  num_array.map!(&:to_i)
  read_from_file_P(sortArray(num_array))
end

def sortArray(num_array)
  n = 0
  num_array = num_array.group_by { |i| i > 0 }
  num_array = num_array[true] + num_array[false]
  possitive_arr = []
  negative_arr = []
  num_array.each_slice(5) do |arr|
    if n <= 4
      possitive_arr << arr
    else
      negative_arr << arr
    end
    n += 1
  end
  possitive_arr.zip(negative_arr)
end

def read_from_file_P(num_array)
  File.open('lab7_1_answer.txt', 'w') do |_f|
    num_array.each do |i|
      _f.puts i
    end
  end
end
