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