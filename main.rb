require './classes'

puts "Player 1 type in your name:"
p1_name = gets.chomp
@player_1 = Player.new(p1_name)

puts "Player 2 type in your name:"
p2_name = gets.chomp
@player_2 = Player.new(p2_name)

puts "This is a math game that attempts the impossible...Make math fun."
puts "You will take turns solving simple problems and for each question you answer correctly you will gain a point."
puts "For each question you answer incorrectly, you will lose one of your three lives."
puts "If you lose all three lives you are a loser both in game and irl."
puts "The game will now start."

game

result