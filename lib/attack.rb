class Attack

  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage
  end

  private

  # def damage
  #   rand(5..20)
  # end
end
