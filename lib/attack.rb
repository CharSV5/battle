class Attach
  def initialize(player,)
    player.receive_damage
  end

  def switch_turn
    @turn = opponent_of(@turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
