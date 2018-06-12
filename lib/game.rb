class Game
  attr_accessor :score

  def initialize(score=0)
    @score = score
  end

  def roll(pins)
    @score += pins
  end
end