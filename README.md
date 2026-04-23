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
* star_with: espera que inicie com um determinado valor que pode ser string ou array
* end_with: espera que termine com um determinado valor que pode ser string ou array

*Classe e tipo*
* be_instance_of: verifica qual é o tipo da instancia (precisa informar qual é o tipo), faz para a classe exata
* be_kind_of: verifica qual é o tipo da instancia (precisa informar qual é o tipo), pode ser por herança
* respond_to: verifica se uma classe responde a um determinado metodo
* be_a / be_an: verifica o tipo, semelhante ao be_kind_of