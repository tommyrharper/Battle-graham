require 'player'

describe Player do
  subject(:ash) { Player.new('Ash') }
  subject(:brock) { Player.new('Brock') }

  describe '#name' do
    it 'returns the name' do
      expect(ash.name).to eq 'Ash'
    end
  end

  describe '#hp' do
    it 'returns the hp' do
      expect(ash.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'removes 10hp from oppossing player' do
      ash.attack(brock)
      expect(brock.hp).to eq Player:DEFAULT_HP-10
    end
  end

end