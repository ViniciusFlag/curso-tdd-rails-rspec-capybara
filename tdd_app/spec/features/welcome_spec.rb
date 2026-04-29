require 'rails_helper'

feature "Welcome", type: :feature do
  scenario "Mostra a mensagem de Boas-vindas!" do 
    visit(root_path)
    expect(page).to  have_content("Bem-vindo")
  end

  scenario "Testando se existe o link de cadastro de clientes" do 
    visit(root_path)
    expect(find("ul li")).to have_link("Cadastro de Clientes")
  end

  scenario "Testando link de cadastro de clientes" do 
    visit(root_path)
    expect(find("ul li")).to have_link("Cadastro de Clientes")
  end
end
