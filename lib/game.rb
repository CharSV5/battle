class Game
  attr_reader :turn
  def initialize(player1, player2 )
    @players = [player1, player2]
    @turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @turn = opponent_of(@turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  private
  
  attr_reader :players

end
