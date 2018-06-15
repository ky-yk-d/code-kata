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
      if isStrike(frameIndex)
        score += 10 + strikeBonus(frameIndex)
        frameIndex += 1
      elsif isSpare(frameIndex)
        score += 10 + spareBonus(frameIndex)
        frameIndex += 2
      else 
        score += sumOfBallsInFrame(frameIndex)
        frameIndex += 2
      end
    end
    return score
  end

  private

    def isStrike(frameIndex)
      return @rolls[frameIndex] == 10
    end

    def isSpare(frameIndex)
      return @rolls[frameIndex] + @rolls[frameIndex+1] == 10
    end

    def sumOfBallsInFrame(frameIndex)
      return @rolls[frameIndex] + @rolls[frameIndex+1]
    end

    def spareBonus(frameIndex)
      return @rolls[frameIndex+2]
    end

    def strikeBonus(frameIndex)
      return @rolls[frameIndex+1] + @rolls[frameIndex+2]
    end

end