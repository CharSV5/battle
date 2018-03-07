require 'player'

describe Player do
  subject(:char) { Player.new('Char') }
  subject(:cindy) { Player.new('Cindy') }

  describe '#name' do
    it 'returns the name' do
      expect(char.name).to eq 'Char'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(char.hit_points).to eq described_class::STARTING_HP
    end
  end

  describe '#receive_damage' do
    it ' reduces the player hit points' do
      expect { cindy.receive_damage }.to change { cindy.hit_points }.by(-10)
    end
  end
end
