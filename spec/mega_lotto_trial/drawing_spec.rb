require "spec_helper"

module MegaLottoTrial
  RSpec.describe Drawing do
    describe '#draw' do
        let(:drawing) { Drawing.new.draw }
      it 'returns an Array' do
        expect(drawing).to be_a(Array)
      end
    end
  end
end
