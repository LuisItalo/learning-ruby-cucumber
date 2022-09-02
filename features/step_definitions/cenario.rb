
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