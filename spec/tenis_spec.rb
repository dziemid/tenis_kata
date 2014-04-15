require './lib/tennis'

describe "tennis" do

  let(:game) { Tennis.new }

  describe "scoring for when one player always wins" do
    [
        { p1_wins: 0, p2_wins: 0, p1_score: 0 , p2_score: 0},
        { p1_wins: 1, p2_wins: 0, p1_score: 15, p2_score: 0},
        { p1_wins: 2, p2_wins: 0, p1_score: 30, p2_score: 0},
        { p1_wins: 3, p2_wins: 0, p1_score: 40, p2_score: 0},
        { p1_wins: 3, p2_wins: 0, p1_score: 40, p2_score: 0 },
        { p1_wins: 3, p2_wins: 1, p1_score: 40, p2_score: 15},
        { p1_wins: 3, p2_wins: 2, p1_score: 40, p2_score: 30},
        { p1_wins: 3, p2_wins: 3, p1_score: 40, p2_score: 40}
    ].each do |rules|
      it "score for p1_wins #{rules[:p1_wins]} should be #{rules[:p1_score]}" do
        rules[:p1_wins].times { game.player_one_scores_point }
        rules[:p2_wins].times { game.player_two_scores_point }
        expect(game.player_one_score).to eq(rules[:p1_score])
        expect(game.player_two_score).to eq(rules[:p2_score])
      end
    end
  end

  describe "deuce" do
  end
end

