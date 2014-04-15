class Tennis
  attr_reader :player_one_score

  SCORING = {
    0 => 0,
    1 => 15,
    2 => 30,
    3 => 40
  }

  def initialize
    @player_one_points = 0
  end

  def player_two_score
    0
  end

  def player_one_scores_point
    @player_one_points += 1
  end

  def player_one_score
    SCORING[@player_one_points]
  end

end

