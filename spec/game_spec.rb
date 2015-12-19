require 'spec_helper'



    describe Game do
    subject(:game) { described_class.new(player_1, player_2)}
    let(:player_1) { double :player}
    let(:player_2) {double :player}

    describe '#attack' do
      it 'damages the player' do
        expect(player_2).to receive(:reduce_heath)
        game.hit(player_2)
      end
    end
    end
