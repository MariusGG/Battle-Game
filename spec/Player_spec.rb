describe Player do

  subject { described_class.new("Jim") }

  describe '#damage_hp' do
    it 'subtracts 20 from hp' do
      subject.damage_hp
      expect(subject.hp).to eq 100
    end
  end

end
