Given("eu acesso a pagina inicial") do
    visit 'http://clinica-qa.freedom-solutions.com.br/clinica/login'
  end
  
When("eu efetuo login com {string} e senha {string}") do |email, senha|
    #find('input[name=username]').set email
    #find('input[name=password]').set senha
    #click_button 'Entrar'
    # ou apenas chame o metodo abaixo (tecnicas de pageobject)
    LoginPage.new.fazLogin(email,senha)
  end
  
Then("devo entrar na tela principal") do
  expect(page).to have_content "MENU PRINCIPAL"
  end
  
Then("vejo a mensagem {string}") do |mensagem|
    expect(page).to have_content "O e-mail e/ou senha não conferem"
  end