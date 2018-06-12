require "spec_helper"
require "game"

describe "Game" do
  it "scores 0 in a all-gutter one" do
    game = Game.new
    for point in 1..20 do
      game.roll(0)
    end 
    expect(game.score).to eq 0
  end

  it "scores 0 in a all-one-pin one" do
    game = Game.new
    for point in 1..20 do
      game.roll(1)
    end 
    expect(game.score).to eq 20
  end

end