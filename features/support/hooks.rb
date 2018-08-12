#script para tirar screenshot da tela final de cada teste
After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')  #elimina caracteres especiais do nome do cenario
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!  # substitui espacos por _ e converte tudo em minusculas
    screenshot = "reports/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencia')

end