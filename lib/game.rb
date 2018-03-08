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
    @turn = opponent
  end

  def opponent
    @players.reject { |player| turn == player }.last
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private

  attr_reader :players
  
  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end
end
