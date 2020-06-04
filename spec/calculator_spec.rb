require 'calculator'

describe Calculator do

  describe '.evaluate' do
    it "takes in a sum and returns it to the user" do
      expect(subject.evaluate("1 + 1")).to eq "1 + 1"
    end
  end
end
