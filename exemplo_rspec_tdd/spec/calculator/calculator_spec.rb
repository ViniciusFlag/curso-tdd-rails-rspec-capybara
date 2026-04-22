require "calculator"

describe Calculator do
    it "sum method for 2 numbers" do
        calc = Calculator.new 
        result = calc.sum(5,7)
        expect(result).to eq(12)
    end
    
    specify "sum method for 2 numbers with negative number" do
        calc = Calculator.new 
        result = calc.sum(-5,7)
        expect(result).to eq(2)
    end
end