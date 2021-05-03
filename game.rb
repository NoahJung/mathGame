# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players.
# The game doesn’t end until one of the players loses all their lives. 
# The game should announce who won and what the other player’s score is.

# planning

class Quiz
  attr_accessor :player1, :player2

  def initialize
    @player1= player1
    @player2= player2
  end


  

  def question
    player1= 3
    player2= 3
    num1= rand(1..20)
    num2= rand(1..20)
    answer= num1 + num2
    puts "what does #{num1} plus #{num2} ?"
    userinput= $stdin.gets.chomp;
    if userinput.to_i == answer
      puts "score_ P1: #{player1}/3, P2: #{player2}/3"
    else
      puts "wrong answer"
    end

  end

end
