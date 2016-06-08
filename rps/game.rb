require './rps'

puts "Hi! Want to play RPS?"

rps = Rps.new
puts "What do you want to pick? (r)ock, (p)aper, (s)cissors"
input = gets.chomp
player_one = case input
when "r"
  :rock
when "s"
  :scissors
when "p"
  :paper
else
  puts "Pick something correctly! You picked #{input}, not r,p, or s"
end

player_two = [:rock, :scissors, :paper].sample

winner = rps.who_won(player_one: player_one, player_two: player_two)

puts "YOU: #{player_one}, CPU: #{player_two}. Winner: #{winner}"
