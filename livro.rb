require_relative "produto"

class Livro

  include Produto

  attr_reader :possui_reimpressao, :possui_sobrecapa

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, possui_sobrecapa)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco preco
    @possui_reimpressao = possui_reimpressao
    @editora = editora
    @possui_sobrecapa = possui_sobrecapa
  end

  def matches?(query)
    ["livro", "impresso"].include?(query)
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
end

