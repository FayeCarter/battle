class Game

  DEFAULT_HP = 100

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @hp = DEFAULT_HP
  end
  
  attr_reader :players, :hp

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end


  def attack(target)
    target.take_damage
  end

end