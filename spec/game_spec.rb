require 'game'

describe Game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double (:player1, receive_damage: false, hp: 0, name: "Ellie" )}
  let(:player1) { double :player2, receive_damage: false, hp: 0, name: "Marius" ) }

  subject { described_class.create("Rosie", "Jim", player_class) }

  describe '#get_player_name' do
    it "returns player name" do
      expect(game.player1.to eq player1
    end
  end
  describe '#get_player_name'do
    it "returns player name" do
      expect(game.player2.to eq player2
    end
  end
  
describe '#switch_players' do
  it 'switch players' do
    turn = player1
    expect(game.switch).to eq player2
  end
