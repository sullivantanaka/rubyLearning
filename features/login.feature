Feature: Login

   Para que eu possa utilizar o sistema
   Sendo um usuario cadastrado previamente
   Posso acessar o sistema com meu email e senha validos


  Scenario: Usuário valido
    Given eu acesso a pagina inicial
     When eu efetuo login com "isabela@freedom.com.br" e senha "123"
     Then devo entrar na tela principal
     And efetuo Logout

  Scenario: Login invalido
    Given eu acesso a pagina inicial
     When eu efetuo login com "qualquercoisa" e senha "123"
     Then vejo a mensagem "O e-mail e/ou senha não conferem"

  Scenario: Login inexistente
    Given eu acesso a pagina inicial
     When eu efetuo login com "qualquercoisa@freedom.com.br" e senha "123"
     Then vejo a mensagem "O e-mail e/ou senha não conferem"

  Scenario: Senha invalida
    Given eu acesso a pagina inicial
     When eu efetuo login com "isabela@freedom.com.br" e senha "abc123"
     Then vejo a mensagem "O e-mail e/ou senha não conferem"  
  
     
     

