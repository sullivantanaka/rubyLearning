class LoginPage
    
    include Capybara::DSL
    
    def fazLogin (email, senha)
        find('input[name=username]').set email
        find('input[name=password]').set senha
        click_button 'Entrar'
    end
end