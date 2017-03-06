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

  def to_csv
    "#{@titulo},#{@ano_lancamento},#{@preco}"
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

  def initialize
    @livros = []
  end

  def exporta_csv
    @livros.each do |livro|
      puts livro.to_csv
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

  def adiciona(livro)
    @livros << livro if livro
  end

end

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução à Arquitetura e Design de Software", 70, 2011, true)

#estoque = [algoritmos, arquitetura]

estoque = Estoque.new

estoque.adiciona algoritmos
estoque.adiciona arquitetura
estoque.adiciona nil

estoque.exporta_csv