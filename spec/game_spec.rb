require 'game'

describe Game do

  let(:player) { double :player, name: "Rosie"}
  let(:player_class) { double :double, new: player }

  subject { described_class.create("Rosie", "Jim", player_class) }

  describe "#get_player_name" do
    it "returns player name" do
      expect(subject.player_name(1)).to eq "Rosie"
    end
  end
end
