describe 'Meu primeiro script' do

    it 'visitar a pagina' do
         
        visit 'http://app.qa.plug-and-play.pdvend.com.br/'
         expect(page.title). to eql 'PDVend'
    end

     
end