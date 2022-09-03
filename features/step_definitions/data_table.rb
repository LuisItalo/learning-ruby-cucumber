Dado('que tenho umas laranjas') do |table|
    @laranjas = table.rows_hash['laranja'].to_i  #para tabela em linha
  end
  
  Quando('corto {int} laranjas') do |cortar|
    @total = @laranjas - cortar
  end
  
  Entao('verifico quantas laranjas sobraram inteiras') do
    expect(@total).to eq 8
  end
  
  Dado('que eu tenho umas laranjas') do |table|
    table.hashes.each do |valor|      #para tabela em coluna
        @laranjas = valor['laranja'].to_i
    end
  end
  
  Quando('chupo {int} laranjas') do |int|
    @chupei = @laranjas - int
  end
  
  Entao('verifico quantas laranjas sobraram') do
    expect(@chupei).to eq 8
  end
  
  