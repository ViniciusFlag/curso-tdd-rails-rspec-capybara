require "student"
require "course"

describe "Stub" do
    it "has_finished" do
        student = Student.new
        course = Course.new

        allow(student).to receive(:has_finished?)
            .with(an_instance_of(Course))
            .and_return(true)

        finished_course = student.has_finished?(course)

        expect(finished_course).to be_truthy
    end

    it "Argumentos dinamicos" do
        student = Student.new

        allow(student).to receive(:foo) do |arg|
            if arg == :hello
                "Hello"
            elsif arg == :hi
                "hi"
            end
        end

        expect(student.foo(:hello)).to eq("Hello")
        expect(student.foo(:hi)).to eq("hi")
    end

    it "qualquer intancia de classe" do
        student = Student.new
        student2 = Student.new

        # permite qualquer intancia de uma classe, forçando uma resposta
        allow_any_instance_of(Student).to receive(:bar).and_return(true)

        expect(student.bar).to be_truthy 
        expect(student2.bar).to be_truthy 
    end

    it "Testando erros" do # em um method, caso ele tenha um tratamento de erro, podemos simular e testar este erro
        student = Student.new

        # permite qualquer intancia de uma classe, forçando uma resposta
        allow(student).to receive(:bar).and_raise(RuntimeError)

        expect{ student.bar }.to raise_error(RuntimeError) 
    end
end