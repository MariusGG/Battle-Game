class Player
  attr_reader :hp, :name

  def initialize(name)
    @name = name
    @hp = 100
  end

  def damage_hp
    @hp -=  random_hit
  end

  def random_hit
    rand(5 .. 20)
  end

end
