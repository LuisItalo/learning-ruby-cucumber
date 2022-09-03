    Dado('que tenho {int} laranjas no estoque') do |int|
        @laranjas = int
    end

    Quando('amasso {int} laranjas') do |amasso|
        @total = @laranjas - amasso
    end

    Entao('verifico quantidade de laranjas no estoque') do
        expect(@total).to eq 8
    end

    Quando('revendo {int} laranjas') do |valor2|
        #chamando um step
        steps %Q{                           
            Dado que tenho 10 laranjas no estoque
        }
        @resultado = @laranjas - valor2
    end

    Entao('verifico com quantas laranjas fiquei') do
        expect(@resultado).to eq 8
    end
