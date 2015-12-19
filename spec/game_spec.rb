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

      describe '#switch_turns' do
        it 'switches turns after each hit' do
          allow(player_2).to receive(:reduce_heath)
          game.hit(player_2)
          expect(subject.turn).to eq(player_2)
        end

        it 'starts as player 1 turn' do
          expect(subject.turn).to eq(player_1)
        end

        it 'raises error is player goes twice in a row' do
          allow(player_2).to receive(:reduce_heath)
          game.hit(player_2)
          expect{game.hit(player_2)}.to raise_error "It's not your turn"
        end
      end

    end
