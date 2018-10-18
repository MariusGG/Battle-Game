require 'player'

describe Player do

  subject(:player) { Player.new("Rosie") }


  describe '#ran_damage' do
    it 'hits random damage' do
      allow(jim).to receive(:random_hit).and_return(5)
      jim.damage_hp
      expect(jim.hp).to eq 95
    end
  end

    describe '#ran_damage' do
      it 'hits random damage' do
        allow(jim).to receive(:random_hit).and_return(10)
        jim.damage_hp
        expect(jim.hp).to eq 90
      end
    end

      describe '#ran_damage' do
        it 'hits random damage' do
          allow(jim).to receive(:random_hit).and_return(20)
          jim.damage_hp
          expect(jim.hp).to eq 80
        end
      end


end
