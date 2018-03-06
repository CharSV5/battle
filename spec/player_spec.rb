require 'player'

describe Player do
  subject(:char) {Player.new('Char') }
  describe '#name' do
    it 'returns the name' do
      expect(char.name).to eq 'Char'
    end
  end
end
