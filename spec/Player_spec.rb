require 'player'

describe Player do

  subject(:rosie) { Player.new('Rosie') }
  subject(:jim) { Player.new('Jim') }

  describe '#name' do
    it 'returns players name' do
      expect(rosie.name).to eq 'Rosie'
    end
  end
  describe '#hit_points' do
    it 'returns the hit points' do
      life = Player::DEFUALT_HP
      expect(rosie.hp).to eq life
    end
  end

  describe '#take_damage' do
    it 'deduct 10 from hp' do
      subject.damage_point
      expect(jim.hp).to eq 80
    end
  end

end
