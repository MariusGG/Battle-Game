class Player

  attr_reader :name, :hp

  DEFUALT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFUALT_HP
  end

  def damage_point
    @hp -= 20
  end

end
