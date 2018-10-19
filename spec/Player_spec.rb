require 'player'

describe Player do
  subject(:player) { described_class.new("Ellie") }

  describe '#name' do
    it 'returns the player's name do
      expect(player.name).to eq "Ellie"
    end
  end

  describe '#hp' do
    it 'HP set to 60' do
      expect(player.hp).to eq 60
    end

    it "can't drop below 0" do
      20.times { player.damage_hit }
      expect(player.hp).to eq 0
    end
  end

  describe '#damage_hit' do
    it "takes at least 10 points from the player" do
      expect{ player.damage_hit }.to change{ player.hp }.by_at_most(-10)
    end
    it "takes at most 30 points from the player" do
      expect{ player.damage_hit }.to change{ player.hp }.by_at_least(-30)
    end
  end



end
