class Player
  attr_reader :hp, :name

  def initialize(name)
    @name = name
    @hp = 100
  end

  def damage_hp
    @hp -= 20
  end
end
