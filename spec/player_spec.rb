require 'player'

RSpec.describe Player do
  subject { described_class.new("Bob") }
  it 'stores the players name' do
    expect(subject.name).to eq("Bob")
  end

  it 'has a HP value' do
    expect(subject.hp).to eq(100)
  end

  describe '#reduce_hp_by_10' do
    it 'reduces hp by 10' do
      subject.reduce_hp_by_10
      expect(subject.hp).to eq(90)
    end
  end
end
