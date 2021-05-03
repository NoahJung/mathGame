
# store each player's score
class Scores
  attr_accessor :quiz_num, :scores

 def initialize (num, score)
   @quiz_num = num
   @scores = score
 end

 def print
   puts "score_ Player1: #{self.scores[0]}/3, Player2: #{self.scores[1]}/3"
 end

 def score_lose
   if quiz_num % 2 == 1
     self.scores[0] -= 1
   else 
     self.scores[1] -= 1
   end
 end

end