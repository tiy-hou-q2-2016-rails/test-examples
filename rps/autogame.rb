require './rps'

puts "Hi! We will play RPS n times"
puts "How many times?"

times = gets.chomp.to_i

rps = Rps.new
rps.autoplay(times)
rps.winners.group_by {|w| w }.each do |choice, count_array|
  percentage = (count_array.length.to_f / times) * 100
  puts "#{choice} won #{count_array.count} times. For #{percentage.round(2)}%"
end
