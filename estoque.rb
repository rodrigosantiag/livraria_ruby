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

  def quantidade_de_vendas_por(produto, &campo)
    @vendas.count{|venda| campo.call(venda) == campo.call(produto) }
  end

  def livro_que_mais_vendeu_por(&campo)
    @vendas.sort {|v1,v2| quantidade_de_vendas_por(v1, &campo) <=> quantidade_de_vendas_por(v2, &campo)}.last
  end

end