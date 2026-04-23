describe "Matchers Verdadeiro e Falso" do
    it "be true - é verdadeiro?" do
        expect(1.odd?).to be true # odd = impar
    end

    it "be_truthy - é verdadeiro?" do
        expect(1.odd?).to be_truthy
    end

    it "be false - é falso?" do
        expect(1.even?).to be false # even = par
    end

    it "be_truthy - é falso?" do
        expect(1.even?).to be_falsey
    end

    it "be_nil - esta vazio?" do
        expect(defined? x).to be_nil
    end
end