require_relative "contador"

class Estoque

  attr_reader :livros

  def initialize
    @livros = []
    @vendas = []
    @livros.extend Contador
  end

  def << (livro)
    @livros << livro if livro
    self
  end

  def maximo_necessario
    @livros.maximo_necessario
  end

  def vende(livro)
    @livros.delete livro
    @vendas << livro
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

  def quantidade_de_vendas_de_titulo(produto)
    @vendas.count{|venda| venda.titulo == produto.titulo }
  end

end