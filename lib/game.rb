class Game
  def scores events
    player1score = score_for(events, 1)
    player2score = score_for(events, 2)
    if  player1score > 45 
      return ["won","lost"]     
    elsif player2score > 45
      return ["lost","won"]
    end
    [player1score, player2score]
  end

  private

  def score_for events, player
    score = events.select {|i| i == player }.count*15
    if score == 45
      return 40
    end
    return score   
  end

end
