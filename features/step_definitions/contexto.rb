Dado('tenho {int} laranjas') do |valor|
    @laranjas = valor
    end
    
    Quando('coloco {int} laranjas') do |valor2|
        @resultado = @laranjas + valor2
    end
    
    Entao('verifico o total de laranjas e {int}') do |total|
        expect(@resultado).to eq total
    end
    
    Quando('tiro {int} laranjas da bolsa') do |tiro|
        @resultado = @laranjas - tiro
    end
    
    Entao('verifico quantas laranjas fiquei') do
        expect(@resultado).to eq 8
    end
    