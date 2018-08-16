class LoginPage
    
    include Capybara::DSL
    
    def fazLogin (email, senha)
        #find('input[name=username]').set email
        #find('input[name=password]').set senha
        # ou
        fill_in "username", with: email
        fill_in "password", with: senha
        
        click_button 'Entrar'
    end
end