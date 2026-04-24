require "contador"

describe "change" do
    it { expect{Contador.incrementa}.to change { Contador.qtd } } # verifica a mudança do valor
    it { expect{Contador.incrementa}.to change { Contador.qtd }.by(1) } # verifica a mudança do valor com a diferença de um
    it { expect{Contador.incrementa}.to change { Contador.qtd }.from(2).to(3) } # verifica a mudança DE um valor PARA outro
end