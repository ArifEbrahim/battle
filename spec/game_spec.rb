require 'game'

describe Game do
  let (:player1) { double :player, hp: 100, name: "Bob" }
  let (:player2) { double :player, hp: 100, name: "Alice" }
  subject { described_class.new(player1, player2)}
  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:reduce_hp_by_10)
      subject.attack_player(2)
    end
  end

  describe '.new' do
    it 'responds to new with 2 arguments' do
      expect(Game).to respond_to(:new).with(2).arguments 
    end
  end

  describe '#get_player_hp' do
    it 'returns the health of a player' do
      expect(subject.get_player_hp(1)).to eq(100)
    end
  end

  describe '#get_player_name' do
    it 'returns the name of a player' do
      expect(subject.get_player_name(1)).to eq("Bob")
    end
  end

end
