class Tennis
  attr_reader :player_one_score

  def initialize
    @player_one_score = 0
  end

  def player_two_score
    0
  end

  def player_one_scores_point
    @player_one_score += 15
    @player_one_score = [@player_one_score, 40].min
  end

end

