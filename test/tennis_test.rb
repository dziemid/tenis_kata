require_relative 'minitest_helper'
require_relative '../lib/game'

# Annoying helper for minitest :/
alias :context :describe

describe Game do

  def subject
    Game.new
  end

  context "when no points scored" do
    it "returns scores for both players" do
      subject.scores([]).must_equal [0,0]
    end
  end

  context "when one point scored" do
    it "returns scores for both players" do
      subject.scores([1]).must_equal [15,0]
    end
  end

  context "when player 1 has scored twice and player 2 has scored once" do
    it 'returns score for both players' do
      subject.scores([1,1,2]).must_equal [30,15]
    end
  end

  context "when player 1 has scored three times and player 2 has scored once" do
    it 'returns score for both players 2' do
      subject.scores([1,1,2,1]).must_equal [40,15]
    end
  end

  context 'when player 1 has scored four times and player 2 has scored twice' do
    it 'says player 1 has won' do
      subject.scores([1,2,1,2,1,1]).must_equal ['won','lost']
    end
  end

end
