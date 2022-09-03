
# before e after globais, roda em todos os cenarios
Before do
    puts 'executado antes de cada cenario'
    @soma = 5 + 5
end

After do
    puts 'executado depos de cada cenario'
end


#before e after com tags para cenario especifico
Before '@comeco' do
    puts 'rodando apenas no cenario com tag começo'

end

After '@final' do
    puts 'rodando apenas no cenario com tag final'
end