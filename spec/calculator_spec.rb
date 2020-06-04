require 'calculator'

describe Calculator do

  describe '.evaluate' do
    context "when the sum is addition" do
      it "takes in a sum of 1 + 1 and returns the sum with the answer of 2" do
        expect(subject.evaluate("1 + 1")).to eq ["1 + 1", 2]
      end

      it "takes in a sum of 10 + 10 and returns the sum with the answer of 20" do
        expect(subject.evaluate("10 + 10")).to eq ["10 + 10", 20]
      end
    end

    context "when the sum is subtraction" do
      it "takes in the sum of 5 - 1 and returns the sum with the answer of 4" do
        expect(subject.evaluate("5 - 1")).to eq ["5 - 1", 4]
      end
    end
  end
end
