require 'calculator'

describe Calculator do

  describe '.evaluate' do
    context "when the sum is addition" do
      it "takes in a sum of '1 + 1' and returns the sum with the answer of 2" do
        expect(subject.evaluate("1 + 1")).to eq ["1 + 1", 2]
      end

      it "takes in a sum of '10 + 10' and returns the sum with the answer of 20" do
        expect(subject.evaluate("10 + 10")).to eq ["10 + 10", 20]
      end

      it "takes in a sum of floats '10.0 + 10.0' and returns the sum with the answer, 20.0" do
        expect(subject.evaluate('10.0 + 10.0')).to eq ['10.0 + 10.0', 20.0]
      end
    end

    context "when the sum is subtraction" do
      it "takes in the sum of 5 - 1 and returns the sum with the answer of 4" do
        expect(subject.evaluate("5 - 1")).to eq ["5 - 1", 4]
      end

      it "takes in the sum of 50 - 10 and returns the sum with the answer of 40" do
        expect(subject.evaluate("50 - 10")).to eq ["50 - 10", 40]
      end

      it "takes in the sum of floats '50.0 - 10.0' and returns the sum with the answer of 40.0" do
        expect(subject.evaluate("50.0 - 10.0")).to eq ["50.0 - 10.0", 40.0]
      end
    end

    context "when the sum is division" do
      it "takes in the sum of 9 / 3 and returns the sum with the answer of 3" do
        expect(subject.evaluate("9 / 3")).to eq ["9 / 3", 3]
      end

      it "takes in the sum of 90 / 3 and returns the sum with the answer of 30" do
        expect(subject.evaluate("90 / 3")).to eq ["90 / 3", 30]
      end

      it "throws an error when the user tries to divide a number by 0" do
        message = "MathError: Numbers can not be divided by zero"
        expect{subject.evaluate("1 / 0")}.to raise_error message
      end
    end

    context "when the sum is multiplation" do
      it "takes in the sum of 5 * 5 and returns the sum with the answer 25" do
        expect(subject.evaluate("5 * 5")).to eq ["5 * 5", 25]
      end

      it "takes in the sum of 25 * 4 and return the sum with the answer 100" do
        expect(subject.evaluate("25 * 4")).to eq ["25 * 4", 100]
      end

      it "takes in the sum of 5 * 5 with a traditional times (x) sign and returns the sum with the answer 25" do
        expect(subject.evaluate("5 x 5")).to eq ["5 x 5", 25]
      end

      it "takes in the sum of 25 x 4 with a traditional times (x) sign and returns the sum with the answer of 100" do
        expect(subject.evaluate("25 x 4")).to eq ["25 x 4", 100]
      end
    end

    context "when the number input is invalid" do
      it "throws an error when the first number uses letters instead an integers" do
        message = "ArgumentError: Only integers can be used to evaluate sums"
        expect{ subject.evaluate("one + 1") }.to raise_error message
      end

      it "throws an error when the second number uses letters instead an integers" do
        message = "ArgumentError: Only integers can be used to evaluate sums"
        expect{ subject.evaluate("1 + one") }.to raise_error message
      end

      it "throws an error when both numbers use letters instead an integers" do
        message = "ArgumentError: Only integers can be used to evaluate sums"
        expect{ subject.evaluate("one + one") }.to raise_error message
      end

    context "when the operator input is invalid"
      it "throws an error when an invalid operator like '=' is used" do
        message = "ArgumentError: Invalid operator ="
        expect{ subject.evaluate("1 = 1") }.to raise_error message
      end

      it "throws an error when an invalid operator like '%' is used" do
        message = "ArgumentError: Invalid operator %"
        expect{ subject.evaluate("1 % 1") }.to raise_error message
      end
    end
  end
end
