require_relative "produto"

class EBook

  include Produto

  def initialize(titulo, preco, ano_lancamento, editora)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco preco
    @editora = editora
  end

  def matches?(query)
    ["ebook", "digital"].include?(query)
  end

  def exibe_newsletter(livro)
    if livro.ano_lancamento < 2000
      puts "Newsletter"
      puts livro.titulo
      puts livro.preco
    end
  end
end

