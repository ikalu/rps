class RockPaperScissors

  RULES = {
    :R => {:R => :draw, :P => :win, :S => :lose},
    :P => {:R => :lose, :P => :draw, :S => :win},
    :S => {:R => :win, :P => :lose, :S => :draw}
  }

  def to_a
  end

end

class Move
  attr_reader :player, :ai, :rockpaperscissors

  def initialize(p1, ai1, rules)
    @player = p1
    @ai = ai1
    @rockpaperscissors = rules
  end

  def winner(p1, ai1)
    RULES[p1][ai1] 
  end
end

class Player

  def move
    play = gets.inspect
  end

end

class Ai
  ai_move = RockPaperScissors::RULES.keys.shuffle!

  def move
    play = ai_move.shift
  end

end


puts RockPaperScissors::RULES.keys.shuffle!

