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
  puts "Game will now start, get ready."
  while (@player_1[:lives] > 0) && (@player_2[:lives] > 0)
    num1 = rand(21)
    num2 = rand(21)
    num3 = rand(21)
    num4 = rand(21)
    puts "Player 1: Answer this question."
    player_1_question = "#{num1} + #{num2}"
    puts "#{player_1_question.to_s}"
    player_1_answer = gets.chomp
      if player_1_answer.to_i == num1 + num2
        @player_1[:score] += 1
        puts "Correct! Score is now #{@player_1[:score]}."
      else
        @player_1[:lives] -= 1
        puts "Wrong! You are dead and now have #{@player_1[:lives]} lives."
      end 
    puts "Player 2: Answer this question."
    player_2_question = "#{num3} + #{num4}"
    puts "#{player_2_question.to_s}"
    player_2_answer = gets.chomp
      if player_2_answer.to_i == num3 + num4
        @player_2[:score] += 1
        puts "Correct! Score is now #{@player_2[:score]}."
      else
        @player_2[:lives] -= 1
        puts "Wrong!  You are dead and now have #{@player_2[:lives]} lives."
      end
  end
end

def result
  if @player_1[:lives] == 0
    puts "#{@player_1[:name]} you suck, go home.  #{@player_2[:name]} you're awesome, you win."
  else
    puts "#{@player_2[:name]} you suck, go home.  #{@player_1[:name]} you're awesome, you win."
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

result
