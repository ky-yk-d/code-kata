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
    Integer frameIndex = 0
    for frame in 1..10 do
      if @rolls[frameIndex] == 10
        score += 10 + @rolls[frameIndex+1] + @rolls[frameIndex+2]
        frameIndex += 1
      elsif isSpare(frameIndex)
        score += 10 + @rolls[frameIndex+2]
        frameIndex += 2
      else 
        score += @rolls[frameIndex] + @rolls[frameIndex+1]
        frameIndex += 2
      end
    end
    return score
  end

  private
    def isSpare(frameIndex)
      return @rolls[frameIndex] + @rolls[frameIndex+1] == 10
    end

end