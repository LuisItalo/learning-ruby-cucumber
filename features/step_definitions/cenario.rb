
Dado('que tenha {int} laranjas') do |valor1|
    puts valor1
    @laranjas = valor1

end

Quando('como {int} laranjas') do |valor2|
    puts valor2
    @comer = valor2
    @resultado = @laranjas - @comer
end

Entao('vejo quantas laranjas sobraram') do
    puts @resultado
    expect(@resultado).to eq 8
end

Quando('compro {int} laranjas') do |valor4|
    puts valor4
    @comprar = valor4
    @compra_total = @laranjas + @comprar
    end
    
    Entao('vejo quantas laranjas tenho') do
        puts @compra_total
        expect(@compra_total).to eq 15
    end
    