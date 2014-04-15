require './lib/tennis'

describe "tennis"  do

  let(:game) { Tennis.new }

  describe "scoring for when one player always wins" do

    [
      { player_one_wins: 0, score: 0 },
      { player_one_wins: 1, score: 15 },
      { player_one_wins: 2, score: 30 },
      { player_one_wins: 3, score: 40 }
    ].each do |expectation|
      it "given " do
        expectation[:player_one_wins].times { game.player_one_scores_point }
        expect(game.player_one_score).to eq(expectation[:score])
      end
    end
  end

  describe "deuce" do
  end
end

