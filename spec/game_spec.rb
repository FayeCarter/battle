require 'game'

describe Game do
  
  subject(:game) { described_class.new(dave, jim) }
  let(:dave) { double(:player) }
  let(:jim) { double(:player) }

  describe 'new Game' do
    it 'should recognise player 1' do
      expect(game.player_1).to eq dave
    end

    it 'should recognise player 2' do
      expect(game.player_2).to eq jim
    end
  end

  describe '#attack' do
    it 'attack a player' do
      expect(jim).to receive :take_damage
      subject.attack(jim)
    end
  end
end
