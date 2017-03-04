class Livro
  attr_reader :titulo, :preco, :ano_lancamento

  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
  end

  ruby = Livro.new("Livro de RUby", 10, 1998)
  rails = Livro.new("Livro de Rails", 20, 2000)

  livros = [ruby, rails]

  livros.each do |livro|
    puts "#{livro.titulo} - #{livro.preco}"
  end

end