class Game

  attr_reader :current_player, :last_move

 def self.create(player1_name, player2_name, player_class = Player)
   players = [player_class.new(player1_name), player_class.new(player2_name)]
   new(players)
 end


  def initialize(players)
    @players = players
    @current_player = 1
    @last_move = nil
  end
  
  def player_name(player_number)
    player_number == 1 ? @players.character.name
  end

end
