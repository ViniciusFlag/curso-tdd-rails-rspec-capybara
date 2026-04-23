require 'string_vazia'
describe String do
    describe StringNaoVazia do
        it "Não esta vazia" do
            expect(subject).to eq("Não sou vazio") # neste caso, o subject é definido a partir do describe mais interno
        end
    end
end