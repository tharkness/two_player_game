@player_1 = {
	lives: 3,
	score: 0
}

@player_2 = {
	lives: 3,
	score: 0
}

def player_1_name
  puts "Player 1 enter your name:"
  pone_name = gets.chomp
  @player_1.merge!(name: pone_name)
end

def player_2_name
  puts "Player 2 enter your name:"
  ptwo_name = gets.chomp
  @player_2.merge!(name: ptwo_name)
end

def game
  while (@player_1[:lives] && @player_2[:lives]) > 0
    puts "Player 1: #{rand(21)} + #{rand(21)} is equal to what?"
    p_one_answer = gets.chomp
      case p_one_answer
      when p_one_answer !=~ /\d/
        @player_1[:lives] -= 1
        puts "#{@player_1[:name]}...you done fucked up, you now have #{@player_1[:lives]}."
      end
  end
end

player_1_name

puts "Player 1 your name is #{@player_1[:name]}, is that correct?"
p_one_response = gets.chomp
player_1_name if p_one_response == 'no'

player_2_name

puts "Player 2 your name is #{@player_2[:name]}, is that correct?"
p_two_response = gets.chomp
player_2_name if p_two_response == 'no'

game
