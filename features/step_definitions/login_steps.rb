Given("eu acesso a pagina inicial") do
    visit 'http://clinica-qa.freedom-solutions.com.br/clinica/login'
  end
  
When("eu efetuo login com {string} e senha {string}") do |email, senha|
    LoginPage.new.fazLogin(email,senha) #definido em pages.rb
  end
  
Then("devo entrar na tela principal") do
  expect(page).to have_content "MENU PRINCIPAL"
  end

Then("efetuo Logout") do
  click_link "Logout" 
  end
  
Then("vejo a mensagem {string}") do |mensagem|
    expect(page).to have_content "O e-mail e/ou senha não conferem"
  end

  When("eu faco nada") do
    print "estou aqui fazendo nada"
  end
  
  Then("nada acontece") do
    print "aqui nada deve acontecer"
  end
  
  Given("Eu entro na tela do facebook") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("eu preencher login {string} e senha {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("eu vejo a timeline") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("eu vejo a mensagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end