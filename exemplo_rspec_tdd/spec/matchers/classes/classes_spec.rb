require "string_vazia"

describe "Classes" do
    it "be_instance_of - pela classe" do
        expect(10).to be_instance_of(Integer)
    end

    it "be_kind_of - por herança" do
        str = StringNaoVazia.new
        expect(str).to be_kind_of(String)
        expect(str).to be_kind_of(StringNaoVazia)
        expect(10).to be_kind_of(Integer)
    end

    it "respond_to - responde a" do
        expect("ruby").to respond_to(:size)
    end

    it "be_a / be_an - pelo tipo" do
        str = StringNaoVazia.new
        expect(str).to be_a(String)
        expect(str).to be_a(StringNaoVazia)

        expect(str).to be_an(String)
        expect(str).to be_an(StringNaoVazia)
    end
end