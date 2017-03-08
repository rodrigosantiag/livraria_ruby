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

module Contador
  def maximo_necessario
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    @maximo_necessario
  end
end

class Estoque

  attr_reader :livros

  def initialize
    @livros = []
    @livros.extend Contador
  end

  def << (livro)
    @livros << livro if livro
    self
  end

  def maximo_necessario
    @livros.maximo_necessario
  end

  def remove(livro)
    @livros.delete livro
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
programmer = Livro.new("Livro Programmer", 150, 1999, true)
outro_livro = Livro.new("Livro Qualuer", 200, 2017, true)

estoque = Estoque.new

estoque << algoritmos
puts estoque.maximo_necessario
estoque << arquitetura
puts estoque.maximo_necessario
estoque << programmer << outro_livro
puts estoque.maximo_necessario

estoque.remove outro_livro
puts estoque.maximo_necessario