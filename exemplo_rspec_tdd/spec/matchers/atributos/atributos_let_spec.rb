require 'pessoa'

describe 'Atributos - LET' do
    # around(:each) do |teste|
    #     @pessoa = Pessoa.new
    # end
    
    let(:pessoa) { Pessoa.new }

    it "have_attributes" do
        pessoa.nome = "Vinicius"
        pessoa.idade = 25
        expect(pessoa).to have_attributes(nome: starting_with("V"), idade: (be >= 25)) # (:nome)
    end
    it "have_attributes" do
        pessoa.nome = "Alice"
        pessoa.idade = 20
        expect(pessoa).to have_attributes(nome: starting_with("A"), idade: (be >= 20)) # (:nome)
    end
end