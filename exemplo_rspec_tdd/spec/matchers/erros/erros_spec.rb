require "calculator"

describe "Erros" do
    subject(:calc) { Calculator.new() }

    it "raise_exception - divide por 0" do
        expect{calc.div(3, 0)}.to raise_exception
    end

    it "raise_error - erro especifico (ZeroDivisionError)" do
        expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError)
        expect{calc.div(3, 0)}.to raise_error("divided by 0")
        expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
        expect{calc.div(3, 0)}.to raise_error(/divided/)
    end
end