class Whos_turn
  attr_accessor :quiz_num
  def initialize (num)
    @quiz_num = num
  end

  def turn 
    if quiz_num % 2 == 1
      return "player1"
    else
      return "player2"
    end
  end
end