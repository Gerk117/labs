def input
  loop do
    str = gets
    break if str == "\n"
    if str.include? 'a'
      str.scan(/\w+/) { |w| w.scan(/\D+/) { |s| print"#{s}\n" if s.scan(/[Aa]/).size >= 2 } }
    end
  end
end