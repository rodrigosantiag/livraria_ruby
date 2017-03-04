require_relative "livro"

agile = Livro.new("Agile Development with Rails", 100, 1998)
newest_agile = Livro.new("Agile Development with Rails (Second Edition)", 100, 2012)

livros = [agile, newest_agile]

livros.each do |livro|
  livro.exibe_newsletter livro
end