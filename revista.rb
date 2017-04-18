require_relative "produto"
require_relative "impresso"

class Revista < Produto

  include Impresso

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, numero)

    super(titulo, preco, ano_lancamento, editora)
    @possui_reimpressao = possui_reimpressao
    @numero = numero
  end

  def matches?(query)
    ["revista", "impresso"].include?(query)
  end

  def exibe_newsletter(livro)
    if livro.ano_lancamento < 2000
      puts "Newsletter"
      puts livro.titulo
      puts livro.preco
    end
  end
end

