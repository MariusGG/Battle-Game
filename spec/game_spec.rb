require 'game'

describe Game do
    let(:game) { describe_class.new(player1, player2) }
    let(:player1) { double :player1 }
    let(:player2) { double :player2 }

  context 'returns players' do

    describe "#get_player1_name" do
      it "returns player1 name" do
        expect(game.player1.to eq player1
      end
    end

    describe "#get_player2_name" do
      it "returns player2 name" do
        expect(game.player2.to eq player2
      end
    end

  end
# this will get the method from the player class of :damage_point to be used in game
  describe '#attack' do
    it "attack a player" do
      expect(player2).to recieve(:damage_point)
    end
  end

end
