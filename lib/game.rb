class Game

  attr_reader :current_player, :move_last

  def self.create(player1_name, player2_name, player_class = Player)
    players = [player_class.new(player1_name), player_class.new(player2_name)]
    new(players)
  end

  def initialize(player)
    @players = player
    @current_player = 1
    @move_last = nil
  end

  def player_name(player_number)
    player_number == 1 ? @players.first.name : @players.last.name
  end

  def player_hp(player_number)
    player_number == 1 ? @players.first.hp : @players.last.hp
  end

  def attack
    current_player == 1 ? @players.last.damage_hp : @players.first.damage_hp
    switch_player
    @move_last = "Damage to health!"
  end

  private

  def switch_player
    @current_player == 1 ? @current_player= 2 : @current_player = 1
  end

end
