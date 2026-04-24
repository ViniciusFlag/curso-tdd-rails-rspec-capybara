$counter = 0 # variavel global

describe "Let" do
    let(:count) { $counter += 1 }

    it "salva no cache" do
        expect(count).to eq(1) # 1a vez carregado
        expect(count).to eq(1) # 2a fica em cache o valor inicial
    end
    
    it "não fica em cache" do
        expect(count).to eq(2)
    end
end