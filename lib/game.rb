class Game

  def initialize
    @score = 0
    @rolls = Array.new(21)
    @currentRoll = 0
  end

  def roll(pins)
    @rolls[@currentRoll] = pins
    @currentRoll += 1
  end

  def score
    Integer score = 0
    for i in 0..@rolls.count{ |num| !num.nil? }-1 do # ugly
      print(i, 'is', @rolls[i].class)
      puts()
      score += @rolls[i]
    end
    return score
  end

end