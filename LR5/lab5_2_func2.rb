def input(str)
    cnt = 0
    result = ''
    if str.include? 'a'
      str.scan(/\w+/) do |x|
        x.scan(/\D+/) do |y|
          if y.scan(/[Aa]/).size >= 2
            print "#{y}\n"
            cnt += 1
            result = y
          end
        end
      end
    end
    print "Groups not found\n" if cnt.zero?
    result
end