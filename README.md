# curso-tdd-rails-rspec-capybara
gem 'rspec'
bundle install

# Rspec
-- rspec --init # inicia um projeto com rspec
/spec
    spec_helper.rb # é onde é feito as configurações
.rspec

-- rspec # roda os testes
-- rspec spec/caminho_arquivo_spec.rb # executa arquivo especifico
os arquivos de testes devem conter o sufixo _spec no nome
-- rspec spec/caminho_arquivo_spec.rb -e 'titulo' # roda o teste no titulo especifico do arquivo
-- rspec spec/caminho_arquivo_spec.rb:linha # roda o teste na linha especifica do arquivo

-- it, specify ou example: diz qual é o teste que sera feito naquele momento, e o nome vai da forma como quem esta criado os teste vai usar
-- expect: indica qual é o resulta esperado

# Os Testes devem:
* ser confiaveis
* ser faceis de escrever
* ser faceis de entender

# Teste em 4 fases (xUnit)
* Setup: é quando voce testa o objeto no estado necessario, utiliza-se o SUT(system under test)
* Esxercise: é a interação com o SUT
* Verify: quando voce verifica o comportamento esperado
* Teardown: volta o sistema ao estado original antes do teste, o rspec faz isso automatico

# BDD - RSpec
* context: agrupa o conteudo a ser textado, é a narrativa do que ira acontecer
* subject: substitui o objeto da classe que esta sendo testada
* it: descreve um methodo, aquilo que ele ira fazer
* xit: é como o it sem corpo, não é executado e ele fica como 'PENDING'

# Metchers (rspec-expectations)
cada matcher pode ser definido como positivo(expect().to) ou negativo(expect()not_to) para um objeto

*Igualdade*
* equal e be: compara um objeto com outro
* eql e eq: testa um valor com outro

*Verdadeiro e falso*
* be true ou be false: testa se é verdadeiro ou falso
* be_truthy: testa se é verdadeiro
* be_falsey: testa se é falso
* be_nil: testa se é vazio

*Compração*
* be < ou <=, > ou >=: verificam maior ou maior igual, menor ou meno igual
* be_between(min, max).incluse ou .exclusive: verifica entre um range de numeros, incluindo ou não o numero inicial e o final
* match(/regex/): faz comparação usando expressão regular
* start_with/staring_with: espera que inicie com um determinado valor que pode ser string ou array
* end_with: espera que termine com um determinado valor que pode ser string ou array

*Classe e tipo*
* be_instance_of: verifica qual é o tipo da instancia (precisa informar qual é o tipo), faz para a classe exata
* be_kind_of: verifica qual é o tipo da instancia (precisa informar qual é o tipo), pode ser por herança
* respond_to: verifica se uma classe responde a um determinado metodo
* be_a / be_an: verifica o tipo, semelhante ao be_kind_of

*Atributo de classes*
* have_attributes: verifica se existe um atributo ou valor atribuido a ele dentro de uma classe

*Metodos predicados (retornam um valor booleano)*
* be_odd: verifica se é impar
* be_even: verifica se par
* todo metodo que termina com ?, nos testes se acrescenta o be_

*Erros*
* raise_exception: ele é usado a partir de um bloco{} e vai indicar se uma exceção foi levantada
* raise_error: verifica se uma exceção especifica acontece

*Arrays*
* Include: inclui um ou mais valores no array
* match_array: verifica se um array é exatamente igual ao outro
* contain_exactly: funciona da mesma forma que o match_array, porem não precisa usar os [] e não precisa estar na mesma ordem, mas precisa ter o mesmo conteudo

*Ranges*
* cover: verifica se possui um ou mais valor dentro de um range

*one-liner syntax*
* Permite trocar o expect(subject) por is_epected
* Posso utilizar da sequinte forma, it { is_expected.to cover(2) }, o proprio teste se torna o contexto

*Composição de Expectativas*
* OR/AND: é utilizado para concatenar mais de um match: (ex: it { is_expected.to start_with("Ruby").and end_with("Rails") })

*Coleções*
* all: verifica que todos são ou estão em algum determinado estado: (ex: it { is_expected.to all (be_odd) })

*be_within*
é para trabalhar com numeros flutuantes, faz a verificação da diferená dentro de um range de um valor a outro: (ex: it { expecte(12.5).to be_within(0.5).of(12) }) # 11.5 - 11.6 - 11.7 - 11.8 - 11.9 - 12 - 12.1 - 12.2 - 12.3 - 12.4 - 12.5 

*Satisfy*
* ele permite fazer a execução de um bloco de codigo, que satisfaça uma expressão: (ex: it { expect(10).to satisfy { |x| x % 2 == 0 } })

*Helper Methods*
* Arbitrários: são metodos auxiliares
* Módulos: é um arquivo a parte com modulos auxiliares, mas preciso inclur onde sera utilizado, pode ser dentro de um contexto ou se for utilizar em todo o codigo, pode ser colocado no spec_helper

*Hooks (before e after)*
-- eles podem ser executados na congiguração do spec(spec_helper) ou no teste

*before*
* before(:suite): é executado antes de toda suite de teste
* before(:all): antes de todos os testes
* before(:context): antes de todos os testes
* before(:each): antes de cada teste
* before(:example): antes de cada teste

*after*
* after(:suite): é executado depois de toda suite de teste
* after(:all): depois de todos os testes
* after(:context): depois de todos os testes
* after(:each): depois de cada teste
* after(:example): depois de cada teste

*Hooks (around)*
-- Substitui o before e o after
* ele utiliza da mesma forma que o before e after, a diferença é que ele pode ser dividido em blocos, digamos que voce queira executar algo antes e algo depois, são dois blocos diferentes e que são separados pelo run, o primeiro bloco é "rodado" pelo .run, separando um bloco do outro e executando o que estava a cima

*let e let!*
* let: quando voce precisa atribuir uma variavel de instancia, ao ives de utilizar um bloco before para isso, pode-se usar o let. Ao ser usado, a variavel é carregada apenas quando utilizada pela primeira vez e fica ativa em cache até o teste finalizar
* let!: força a execução antes do teste, semelhante ao que acontece com o before

*Change*
* Ele espera que seja feita uma mudança: (ex: it { expect(Contador.incrementa).to change { Contador.qtd } })

*Output*
* STDOUT(saida padrao): é monitor, quando usamos o puts por exemplo, ele é exibido na saida padrao
* STDIN(entrada padrao): é representado pelo teclado, é o que esta sendo digitado
* STDERR(erro padrao): quando o sitema recebe uma entrada de erro

[output.to_stdout]
[output.to_stderr]

*Negativando*
* É quando voce define a operação inversa de um matcher: (ex: RSpec::Matchers.define_negated_matcher :exclude, :include)

*Agregando Falhas*
* quando temos mais de uma saida em um teste, caso tenha um com erro, ele trava neste e não termina de executar aquele teste, para isso, pode-se usar o aggregate_failures.
* posso fazer a configuração por teste ou configurar no spec_helper e todo o codigo ira conter o aggregate

*Shared Examples*
* são os testes compartilhados
* capitalize: deixa a primeira letra de um texto em maiusculo
* send: é uma forma dinamica para utilizar um metodo

*Customizando matchers*

se utiliza desta forma
RSpec::Matchers.define :matcher_name do |expected|

match do |actual|
    #contexto
end
pode-se customizar a mensagem de erro e sucesso também
failure_message do |actual|
    "message"
end

desciption do
    "message"
end

*tag filters*
* voce define um tipo para um teste: key:true ou key:value
* voce pode executar apenas os teste que contenham uma tag especifica: rspec . -t key_tag_name ou key_tag:value

*Tests Doubles/Dubles de Testes*
* é um termo generico para qualquer objeto falso, que é utilizado no lugar de um objeto real
* o objeto double pode ou não receber "mensagens" (métodos)
* para atribuir uma mensagem a um double, devemos usar o allow(double).to receive_messages(attr1: "Txt1", ...)
* Existem alguns tipos de dubles de testes, como:
    * mok object
    * stubs
    * spy
    * fake object
    * dummy object

*Stubs*
* Força uma resposta especifica para um determinado método de um objeto colaborador

*Methods Stubs*
* restrição de argumentos: 
    * with: restrige quais argumentos um metodo vai receber
* argumentos dinamicos:

*Mocks*
* são usado no verify, testam comportamentos
* mocks expectations: expect(obj). to receive(:method)
* dentro de um bloco de testes, temos as 4 fases que se inicia com o setup, exercice e verify. Com os mocks, a parte de verify onde ele atua, deve ser executada antes dos exercise, é como se o teste estivesse dizendo o que ele vai esperar do exercise, qual deve ser o comportamento dele

*mocks expectations*
* Restrição de argumento: expect(student).to receive(:foo).with(123) # restringe qual vai ser a resposta do argumento
* contagem de mensagens: se um metodo é chamado mais de uma vez, podemos utilizar esta SPEC de contagens:
    * .onde
    * .twice
    * .exactly(n).times
    * .at_least(:once) ou (:twice) # pelo menos uma ou duas vezes
    * .at_least(n).times # pelo menos n vezes
* com valor de retorno: diz qual é o valor de retorno esperado

*Métodos "As Null Object"*
* são semelhantes aos dubles de testes

*Congigurando o rails com rspec*
* rails new name_app -T: comando para criar um projeto sem a configuração padrão de testes do rails
* o RSpec tem uma gem especifica para o rails
* https://github.com/rspec/rspec-rails
* adicionar a gem no Gemfile: 
    group :development, :test do
        gem 'rspec-rails', '~> 8.0.0'
    end
* executar o comando de instalação de pacotes
    * bundle install
* executar o comando para congigurar o rspec:
    rails generate rspec:install
* configurar o binario do rspec:
    group :development do
        gem 'spring-commands-rspec'
    end
* executar comando de instalação de pacotes especifico com bin:
    * bundle install
    * bundle exec spring binstub --all
* como a configuração do rails foi feita sem os testes, é necessario fazer a seguinte configuração:
    config.generators do |g|
        g.test_framework :rspec,
            fixtures: false,
            view_specs: false,
            helper_specs: false,
            routing_specs: false
        end
    end

# Sec. 2: Factory Girl/Bot e VCR

*Fixtures*
* Antecede o factory girl
* configurar o rails_helper, devemos criar uma pasta dentre de spec chamada fixtures
    config.fixture_paths = [
        Rails.root.join('spec/fixtures')
    ]   
* São facilitadores, criam arquivos que simulam os objetos

*FactoryGirl (Bot)*
* É a evolução das fixtures
* é necessario fazer a inclusão da gem
    * gem 'factory_bot_rails'
    * bundle
* incluir configuração no rails_helper
    * config.include FactoryBot::Syntax::Methods
* Definindo as Factories
    * deve ser adicionado uma pasta dentro de spec
        * spec/factories e devem ser configurados da seguinte forma:
            FactoryBot.define do
                factory :customer do
                    name { "Vinicius" }
                    email { "vinicius@mail.com" }
                end
            end
    
*Gem Faker*
* Gera dados dinamicos utilizando a gem faker:
    * gem 'faker'
    * require 'faker'
        FactoryBot.define do
            factory :customer do
                name { Faker::Name.name }
                email { Faker::Internet.email  }
            end
        end

*Sobrescrevendo atributos e aliases para fabricas*
* é possivel sobrescrever um atributo gerado pelo faker:
    * customer = create(:customer, name: "Vinicius")
* voce pode colocar apelidos para as fabricas:
    * factory :customer, aliases: [:user] do
    * customer = create(:user)

*Herança*
* Posso criar uma fabrica dentro de outra

*Atributes for*
* ele gera um hash com os atributos extraidos de uma factory

*Atributo transitorios (Transient Attributes)*
* São atributos passageiros
* voce pode setar que um atributo não podera ser alterado