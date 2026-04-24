require "pessoa"

describe "Atributos" do
    # before(:each) do 
    #     puts "Antes de cada teste"
    #     @pessoa = Pessoa.new
    # end
    # after(:each) do # a saida no console vai ser exibida antes da execução do teste, mas o rspec executa depois, apenas a saida que não fica na ordem
    #     puts "Depois de cada teste"
    #     @pessoa.nome = "Sem nome"
    #     puts "#{@pessoa.inspect}"
    # end

    around(:each) do |teste|
        puts "Antes de cada teste"
        @pessoa = Pessoa.new

        teste.run
        
        puts "Depois de cada teste"
        @pessoa.nome = "Sem nome"
        puts "#{@pessoa.inspect}"
    end
    
    it "have_attributes" do
        @pessoa.nome = "Vinicius"
        @pessoa.idade = 25
        expect(@pessoa).to have_attributes(nome: starting_with("V"), idade: (be >= 25)) # (:nome)
    end
    it "have_attributes" do
        @pessoa.nome = "Alice"
        @pessoa.idade = 20
        expect(@pessoa).to have_attributes(nome: starting_with("A"), idade: (be >= 20)) # (:nome)
    end
end