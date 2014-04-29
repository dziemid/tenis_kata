require_relative 'minitest_helper'

def score_for events, player
  [events.select {|i| i == player }.count*15, 40].min
end

def scores events
  [ score_for(events, 1), score_for(events, 2) ]
end

describe "Game" do

  describe "when no points scored" do
    it "returns scores for both players" do
      scores([]).must_equal [0,0]
    end
  end
  describe "when one point scored" do
    it "returns scores for both players" do
      scores([1]).must_equal [15,0]
    end
  end
  
  describe "when several points are scored" do
    it 'returns score for both players' do
      scores([1,1,2]).must_equal [30,15]
    end

    it 'returns score for both players 2' do
      scores([1,1,2,1]).must_equal [40,15]
    end
  end

end