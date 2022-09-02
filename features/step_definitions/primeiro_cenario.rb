Quando('Somo {int} {float} {int}') do |int, float, int2|
    @soma = int + int2
end

Entao('o resultado tem que ser {int}') do |int|
    expect(@soma).to eq int
    puts @soma
    puts "O Resultado é #{int}"
end