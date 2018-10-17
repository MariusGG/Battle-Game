require 'player'

describe Player do

  subject(:player1) { Player.new('Rosie') }
  subject(:player2) { Player.new('Jim') }

  describe '#name' do
    it 'returns players name' do
      expect(player1.name).to eq 'Rosie'
    end
  end
  describe '#hit_points' do
    it 'returns the hit points' do
      life = Player::DEFUALT_HP
      expect(player1.hp).to eq life
    end
  end

  describe '#take_damage' do
    it 'deduct 20 from hp' do
      subject.damage_point
      expect { player2.damage_point}.to change { player2.hp }.by -20
    end
  end

end
