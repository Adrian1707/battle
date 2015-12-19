
class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def hit(player)
    raise "It's not your turn" if player == @turn
    player.reduce_heath
    @turn = player
  end

  def turn
    @turn 
  end

end
