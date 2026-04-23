require "pessoa"

describe "Atributos" do
    it "have_attributes" do
        pessoa = Pessoa.new
        pessoa.nome = "Vinicius"
        pessoa.idade = 25
        expect(pessoa).to have_attributes(nome: starting_with("V"), idade: (be >= 25)) # (:nome)
    end
end