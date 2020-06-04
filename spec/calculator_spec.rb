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

      it "takes in the sum of 50 - 10 and returns the sum with the answer of 40" do
        expect(subject.evaluate("50 - 10")).to eq ["50 - 10", 40]
      end
    end

    context "when the sum is division" do
      it "takes in the um of 9 / 3 and returns the sum with the answer of 3" do
        expect(subject.evaluate("9 / 3")).to eq ["9 / 3", 3]
      end
    end
  end
end
