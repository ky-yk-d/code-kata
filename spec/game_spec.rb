require "spec_helper"
require "game"

describe "Game" do
  it "is hogehoge" do
    game = Game.new
    expect(game.score).to eq 0
  end
end