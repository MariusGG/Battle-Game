class Player
  
  attr_reader :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hit_points -= 20
  end

end
