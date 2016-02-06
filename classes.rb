require 'byebug'

class Player
  
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
  end

  def right_answer
    @score += 1
  end

end


class Question

  attr_accessor :num1, :num2, :operators

  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
    @operators = "+-*".chars.sample
  end

  def get_answer
    if @operators == "+"
      return @num1 + @num2
    elsif @operators == "-"
      return @num1 - @num2
    else
      return @num1 * @num2
    end
  end

  def display_question
    return "#{@num1} #{@operators} #{@num2}"
  end
end


def game
  while (@player_1.lives > 0) && (@player_2.lives > 0)
    ObjectSpace.each_object Player do |player|
      question = Question.new
      puts "#{player.name} answer this question: #{question.display_question}"
      answer = gets.chomp.to_i
      #byebug
      if answer == question.get_answer
        player.score += 1
        puts "Correct! #{player.name} your score is now #{player.score}!"
      else
        player.lives -= 1
        puts "Wrong! #{player.name} you are dead and you life count is #{player.lives}!"
      end
      break if player.lives == 0
    end
  end
end

def result
  if @player_1.lives == 0
    puts "#{@player_1.name} you suck and you lose.  #{@player_2.name} you are awesome and you win."
  else
    puts "#{@player_2.name} you suck and you lose.  #{@player_1.name} you are awesome and you win."
  end
end
