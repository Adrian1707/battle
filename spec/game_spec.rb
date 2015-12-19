require 'spec_helper'



    describe Game do
    subject(:game) { described_class.new(let(:player1) { double :player},let(:player2) {double :player})}

    describe '#attack' do
      it 'damages the player' do
        expect(player2).to receive(:reduce_heath)
        game.hit(player2)
      end
    end
    end
