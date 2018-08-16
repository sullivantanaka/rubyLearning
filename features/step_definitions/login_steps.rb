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