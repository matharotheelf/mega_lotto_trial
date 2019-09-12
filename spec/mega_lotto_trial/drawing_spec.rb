require "spec_helper"

module MegaLottoTrial
  RSpec.describe Drawing do
    describe '#draw' do
        let(:drawing) { Drawing.new.draw }
      it 'returns an Array' do
        expect(drawing).to be_a(Array)
      end

      it 'returns an Array with 5 elements' do
        expect(drawing.size).to eq(5)
      end
    end
  end
end
