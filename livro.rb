class Livro
  attr_reader :titulo, :preco, :ano_lancamento

  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = aplica_promocao preco
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

def exibe_newsletter(livro)
  if livro.ano_lancamento < 2000
    puts "Newsletter"
    puts livro.titulo
    puts livro.preco
  end
end