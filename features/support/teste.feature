Feature: Ensinar a Isabela
    Para a Isa aprender
    Como uma boa menina
    I quero que ela aprenda

Scenario: Login valido
    Given Eu entro na tela do facebook
    When eu preencher login "fulano" e senha "beltrano"
    Then eu vejo a timeline


Scenario: Login ivalido
    Given Eu entro na tela do facebook
    When eu preencher login "fulano" e senha "errada"
    Then eu vejo a mensagem "Dados incorretos"

    