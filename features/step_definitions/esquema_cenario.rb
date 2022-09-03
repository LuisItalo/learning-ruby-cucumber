Quando('multiplico minhas {int} pelo {int}') do |laranja, valor|

    @multiplicacao = laranja * valor
end
    
Entao('vejo qual {int} da multiplicacao') do |resultado|
        expect(@multiplicacao).to eq resultado
end