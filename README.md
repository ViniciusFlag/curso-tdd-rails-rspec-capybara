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