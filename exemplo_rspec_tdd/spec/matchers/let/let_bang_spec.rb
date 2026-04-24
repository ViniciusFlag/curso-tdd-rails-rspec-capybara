$count = 0

describe "let!" do
    oredem_de_invocacao = []

    let!(:contador) do
        oredem_de_invocacao << :let
        $count += 1
    end

    it "chama o it antes do teste" do
        oredem_de_invocacao << :exemplo
        expect(oredem_de_invocacao).to eq([:let, :exemplo])
        expect(contador).to eq(1)
    end
end