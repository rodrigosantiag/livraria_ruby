require_relative "livro"
require_relative "estoque"

algoritmos = Livro.new("Algoritmos ** teste", 100, 1998, true, "Editora 1", "livro")
arquitetura = Livro.new("Introdução à Arquitetura e Design de Software", 70, 2011, true, "Editora 2", "livro")
programmer = Livro.new("Livro Programmer", 150, 1999, true, "Editora 3", "livro")
outro_livro = Livro.new("Livro Qualuer", 200, 2017, true, "Editora 1", "livro")
revistona = Livro.new("Revista Ruby", 20, 2012, true, "Editora de revista", "revista")
revistona2 = Livro.new("Revista Ruby Refatoração", 10, 1998, true, "Editora de revista", "revista")
online_arquitetura = Livro.new("Introdução a Arquitetura e Design de Software", 50, 2012, true, "editora", "ebook")

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