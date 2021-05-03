# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players.
# The game doesn’t end until one of the players loses all their lives. 
# The game should announce who won and what the other player’s score is.

class Quiz
  attr_accessor :quiz_num, :scores

  def initialize (num, score)
    @quiz_num = num
    @scores = score
  end

  def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    answer = num1 + num2
    turn = Whos_turn.new(self.quiz_num)
    puts "(#{turn.turn})Q. what does #{num1} plus #{num2} ?"
    userinput = $stdin.gets.chomp;

    update = Scores.new(self.quiz_num, self.scores)
    
    if userinput.to_i == answer
      puts "Correct answer!"
      update.print
    else
      update.score_lose
      puts "Wrong answer"
      update.print
    end

    self.quiz_num += 1
    self.check_end
    
  end

  def check_end
    if self.scores[0] == 0 
      puts "Game end : Winner - Player2!"
    elsif self.scores[1] == 0
      puts "Game end : Winner - Player1!"
    else
      self.question
    end
  end

end