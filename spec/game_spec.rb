require "spec_helper"
require "game"

describe "Game" do

  before(:each) do
    @game = Game.new
  end

  it "scores 0 in a all-gutter one" do
    rollMany(20, 0)
    expect(@game.score).to eq 0
  end

  it "scores 20 in a all-one-pin one" do
    rollMany(20, 1)
    expect(@game.score).to eq 20
  end

  it "scores 16 in a one-spare one" do
    rollSpare()
    @game.roll(3)
    rollMany(17, 0)
    expect(@game.score).to eq 16
  end

  it "scores 24 in a one-strike one" do
    rollStrike()
    @game.roll(3)
    @game.roll(4)
    rollMany(16, 0)
    expect(@game.score).to eq 24
  end

  it "scores 300 in a all-strike one" do
    rollMany(12, 10)
    expect(@game.score).to eq 300
  end

  private 
    def rollMany(n, pins)
      for i in 1..n do
        @game.roll(pins)
      end
    end

    def rollSpare()
      @game.roll(5)
      @game.roll(5)
    end

    def rollStrike()
      @game.roll(10)
    end
    
end