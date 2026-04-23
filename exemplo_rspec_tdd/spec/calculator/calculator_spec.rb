require "calculator"

describe Calculator do
    subject(:calc) { described_class.new() } # subistitui o subject por calc
    # subject(:calc) { Calculator.new() } # subistitui o subject por calc, no caso onde o describe esta como texto e não como o nome da casse
    context "#sun" do
        it "positive numbers" do
            # result = subject.sum(5,7)
            result = calc.sum(5,7)
            expect(result).to eq(12)
        end
        
        it "negative and positive numbers" do
            result = calc.sum(-5,7)
            expect(result).to eq(2)
        end

        it "negative numbers" do
            result = calc.sum(-5,-7)
            expect(result).to eq(-12)
        end
    end
end