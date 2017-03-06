class Livro
  attr_reader :titulo, :preco, :ano_lancamento, :possui_reimpressao

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco preco
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
  def calcula_preco(base)
    if @ano_lancamento < 2006
      if !possui_reimpressao?
        base * 0.95
      else
        base * 0.9
      end
    elsif @ano_lancamento <= 2010
      base * 0.96
    else
      base
    end
  end
end

class Estoque
  attr_reader :livros

  def initialize
    @livros = []
  end

  def exporta_csv
    @livros.each do |livro|
      puts "#{livro.titulo},#{livro.ano_lancamento}"
    end
  end

  def total
    @livros.size
  end

  def mais_baratos_que(valor)
    @livros.select do |livro|
      livro.preco < valor
    end
  end

end

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução à Arquitetura e Design de Software", 70, 2011, true)

#estoque = [algoritmos, arquitetura]

estoque = Estoque.new

estoque.livros << algoritmos
estoque.livros << arquitetura

baratos = estoque.mais_baratos_que 800

puts baratos
puts estoque.total