require 'player'

  describe Player do

    let(:player) { Player.new("Ellie") }
    describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq "Ellie"
    end
  context 'player points'do

    describe '#player_points' do
      it "100 hp start of game" do
        expect(player.hp).to eq 60
      end

      it "can't drop below 0" do
        20.times { player.receive_damage }
        expect(player.hp).to eq 0
      end
    end
  end
  context 'hp damage'

    describe '#receive_damage' do
      it "takes at least 10 points from the player" do
        expect{ player.receive_damage }.to change{ player.hp }.by_at_most(-10)
      end
      it "takes at most 30 points from the player" do
        expect{ player.receive_damage }.to change{ player.hp }.by_at_least(-30)
      end
    end
  end


end
