# def ordinal(num)
#   last_number = num % 10
#   ordinal = {1 => "st", 2 => "nd", 3 => "rd"}
#   ordinal.each do |o|
#     if ordinal[num] != nil
#       return "#{num}#{ordinal[num]}"
#     elsif last_number == ordinal[num]
#       return "#{num}#{ordinal[num]}"
#     else
#       return "#{num}th"
#     end
#   end
# end

def ordinal(num)
  ending = case num % 100
  when 11, 12, 13 then 'th'
  else
    case num % 10
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
  end
  "This is #{num}#{ending} item"
end


#
#   if num == 1
#     return "#{num}st"
#   elsif num == 2
#     return "#{num}nd"
#   elsif num == 3
#     return "#{num}rd"
#   else num == 4..20
#     return "#{num}th"
#   end
# end
puts ordinal(1)
puts ordinal(5)
puts ordinal(7)
puts ordinal(21)
puts ordinal(112)
puts ordinal(11)
