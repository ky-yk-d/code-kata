require "spec_helper"
require "game"

describe "Game" do

  before(:each) do
    @game = Game.new
  end

  it "scores 0 in a all-gutter one" do
    rollMany(20,0)
    expect(@game.score).to eq 0
  end

  it "scores 20 in a all-one-pin one" do
    rollMany(20,1)
    expect(@game.score).to eq 20
  end

  def rollMany(n, pins)
    for i in 1..n do
      @game.roll(pins)
    end
  end

end