class Player
  DEFAULT_HP = 60
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def hp
    @hp < 0 ? 0 : @hp
  end

  def receive_damage
    self.hp -= rand(1..3)*10
  end
  # private
  # attr_writer :hp

end
