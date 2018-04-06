def input(str)
  cnt = 0
  result = ''
  str.scan(/[[:alpha:]]+/) do |y|
    if y.scan(/[Aa]/).size >= 26
      cnt += 1
      result = y
    end
  end
  result = "Groups not found\n" if cnt == 0
  print result
  result
end