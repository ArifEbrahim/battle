require 'player'

RSpec.describe Player do
  subject { described_class.new("Bob") }
  it 'stores the players name' do
    expect(subject.name).to eq("Bob")
  end

  it 'has a HP value' do
    expect(subject.hp).to eq(100)
  end

  it 'can change the HP' do
    subject.hp -= 10
    expect(subject.hp).to eq(90)
  end
end
