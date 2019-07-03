describe 'Forms' do
    it 'login com sucesso' do
        visit 'http://app.qa.plug-and-play.pdvend.com.br/'
        find('input[type="email"]').set('gamer@example.com')
        find('input[type="password"]').set('12345678')

        click_button 'Entrar'

        expect(page).to have_text('Painel de Resultados')
        #expect(find('#flash').text).to include ''
        expect(page.title). to eql 'PDVend'
        expect(page).to have_no_content('Senha/email inválido')
        page.has_table?('Vendedor 1')
    end
end