require "spec_helper"

module MegaLottoTrial
  RSpec.describe Drawing do
    describe '#draw' do
        let(:drawing) { Drawing.new.draw }
        let(:drawing_two) { Drawing.new.draw }
      it 'returns an Array' do
        expect(drawing).to be_a(Array)
      end

      it 'returns an Array with 5 elements' do
        expect(drawing.size).to eq(5)
      end

      it 'each element is an integer' do
        drawing.each do |item|
          expect(item).to be < 60
        end
      end

      it 'each element chosen randomly' do
        allow_any_instance_of(Object).to receive(:rand).and_return(30)
        expect(drawing).to eq([30,30,30,30,30])
        allow_any_instance_of(Object).to receive(:rand).and_return(15)
        expect(drawing_two).to eq([15,15,15,15,15])
      end
    end
  end
end
