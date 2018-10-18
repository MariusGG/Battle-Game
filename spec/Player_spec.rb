require 'player'

describe Player do

  let(:player) { Player.new("Ellie") }

  it "names the player" do
    expect(player.name).to eq "Ellie"
  end
  
  describe '#player_points' do
    it "has 100 hit points" do
      expect(player.hp).to eq 100
    end

    it "HP decreases by 20" do
      player.receive_damage
      expect(player.hp).to eq 80
    end
  end
end
