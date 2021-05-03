# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players.
# The game doesn’t end until one of the players loses all their lives. 
# The game should announce who won and what the other player’s score is.


# store each player's score
# class Scores
#    attr_accessor :quiz_num, :score

#   def initialize (quiz_num)
#     @quiz_num = quiz_num
#     @score = score
#   end

#   def reset
#     score = [ 3, 3 ]
#   end

#   def score_lose
#     if quiz_num % 2 == 1
#       score[0] -= 1
#     else 
#       score[1] -= 1
#     end

#   end
# end

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
    puts "for player: what does #{num1} plus #{num2} ?"
    userinput = $stdin.gets.chomp;
    if userinput.to_i == answer
      puts "Correct answer!"
      puts "score_ Player1: #{self.scores[0]}/3, Player2: #{self.scores[1]}/3"
    else
      puts "Wrong answer"
      puts "score_ Player1: #{self.scores[0]}/3, Player2: #{self.scores[1]}/3"
    end
    self.quiz_num += 1
    self.question
  end

end


class New_game

  attr_accessor :quiz_num, :scores, :quiz

  def initialize
    @quiz_num = 1
    @scores = [ 3, 3 ]
    @quiz = Quiz.new(self.quiz_num, self.scores)
  end

  def start
    self.quiz.question
  end

end