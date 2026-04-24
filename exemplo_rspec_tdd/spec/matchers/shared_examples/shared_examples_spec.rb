require "pessoa"

shared_examples 'status' do |sentimento|
    it "#{sentimento}" do
        pessoa.send("#{sentimento}!")
        expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
    end
end

describe "Pessoa" do
    subject(:pessoa) { Pessoa.new }

    # it "feliz" do
    #     pessoa.feliz!
    #     expect(pessoa.status).to eq("Sentindo-se feliz!")
    # end

    # it "triste" do
    #     pessoa.triste!
    #     expect(pessoa.status).to eq("Sentindo-se triste!")
    # end

    # it "contente" do
    #     pessoa.contente!
    #     expect(pessoa.status).to eq("Sentindo-se contente!")
    # end

    # include_examples "name" # inclui
    # it_behaves_like "name" # se comporta como
    # it_should_behave_like "name" # deve ser comportar como

    it_behaves_like "status", :feliz
    it_behaves_like "status", :triste
    it_behaves_like "status", :contente
end