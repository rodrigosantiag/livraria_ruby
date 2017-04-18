require_relative "produto"

class EBook < Produto

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

