class Livro
  attr_reader :titulo, :preco, :ano_lancamento, :possui_reimpressao

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = aplica_promocao preco
    @possui_reimpressao = possui_reimpressao
  end

  def possui_reimpressao?
    @possui_reimpressao
  end

  def exibe_newsletter(livro)
    if livro.ano_lancamento < 2000
      puts "Newsletter"
      puts livro.titulo
      puts livro.preco
    end
  end

  private
  def aplica_promocao(base)
    if @ano_lancamento < 2000
      base *= 0.7
    else
      base
    end
  end
end

agile = Livro.new("Agile Development with Rails", 100, 1998, true)
newest_agile = Livro.new("Agile Development with Rails (Second Edition)", 100, 2012, true)

livros = [agile, newest_agile]

livros.each do |livro|
  livro.exibe_newsletter livro
end