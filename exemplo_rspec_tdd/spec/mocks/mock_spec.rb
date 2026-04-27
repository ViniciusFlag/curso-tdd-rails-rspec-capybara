require "student"
require "course"

describe "MockStub" do
    it ":bar" do
        #setup
        student = Student.new

        # verify
        expect(student).to receive(:bar)

        # exercise
        student.bar
    end

    it "Restriçao de agumento" do
        #setup
        student = Student.new

        # verify
        expect(student).to receive(:foo).with(123) # restringe qual vai ser a resposta do argumento

        # exercise
        student.foo(123)
    end

    it "Restriçao de agumento" do
        #setup
        student = Student.new

        # verify
        expect(student).to receive(:foo).with(123) # restringe qual vai ser a resposta do argumento

        # exercise
        student.foo(123)
    end

    it "Repetição" do
        #setup
        student = Student.new

        # verify
        expect(student).to receive(:foo).with(123).twice

        # exercise
        student.foo(123)
        student.foo(123)
    end

    it "Retorno" do
        #setup
        student = Student.new

        # verify
        expect(student).to receive(:foo).with(123).and_return(true) # ele espera que a função vai receber um determinado valor e vai retornar um valor forçado

        # exercise
        student.foo(123)
    end
end