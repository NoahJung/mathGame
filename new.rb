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