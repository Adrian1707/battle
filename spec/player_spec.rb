require 'spec_helper'

describe Player do
  subject(:player1) { Player.new('Dave') }
  subject(:player2) { Player.new('Adrian') }

  describe '#name' do
    it 'returns the name' do
      expect(player1.name).to eq 'Dave'
    end
  end

  describe '#hit' do
    it 'reduces HP by 10 on each hit' do
      player1.reduce_heath
      expect(player1.hp).to eq(50)
    end
  end

end
