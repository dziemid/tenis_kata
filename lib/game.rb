class Game

  def scores events
    player1score = score_for(events, 1)
    player2score = score_for(events, 2)
    display_score(player1score, player2score)
  end

  private

  def winner_index(scores)
    scores.each_with_index do |score, i|
      return i if score > 45
    end
    nil
  end

  def display_score(player1score, player2score)
    scores = [player1score, player2score]
    if winner_index = winner_index(scores)
      scores[winner_index] = "won"
      scores[winner_index-1] = "lost"
    end
    scores
  end

  def score_for events, player
    score = events.select {|i| i == player }.count*15
    score == 45 ? 40 : score
  end

end
