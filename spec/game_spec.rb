require 'game'

describe Game do
  describe '#attack' do
    it 'damages the player' do
      game = Game.new
      player = double(:player)
      expect(player).to receive(:reduce_hp_by_10)
      game.attack(player)
    end
  end
end
