require_relative "livro"
require_relative "revista"
require_relative "ebook"
require_relative "estoque"

algoritmos = Livro.new("Algoritmos ** teste", 100, 1998, true, "Editora 1", true)
arquitetura = Livro.new("Introdução à Arquitetura e Design de Software", 70, 2011, true, "Editora 2", false)
programmer = Livro.new("Livro Programmer", 150, 1999, true, "Editora 3", false)
outro_livro = Livro.new("Livro Qualuer", 200, 2017, true, "Editora 1", true)
revistona = Revista.new("Revista Ruby", 20, 2012, true, "Editora de revista", 1)
revistona2 = Revista.new("Revista Ruby Refatoração", 10, 1998, true, "Editora de revista", 10)
online_arquitetura = EBook.new("Introdução a Arquitetura e Design de Software", 50, 2012, "editora")

estoque = Estoque.new

estoque << algoritmos << algoritmos << algoritmos << arquitetura << programmer << outro_livro << outro_livro << revistona << revistona << revistona2 << online_arquitetura

estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende programmer
estoque.vende programmer
estoque.vende programmer

estoque.vende revistona
estoque.vende revistona
estoque.vende revistona2
estoque.vende revistona2
estoque.vende revistona2
estoque.vende online_arquitetura

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)