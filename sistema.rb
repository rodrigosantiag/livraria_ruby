require_relative "livro"
require_relative "estoque"

algoritmos = Livro.new("Algoritmos ** teste", 100, 1998, true, "Editora 1")
arquitetura = Livro.new("Introdução à Arquitetura e Design de Software", 70, 2011, true, "Editora 2")
programmer = Livro.new("Livro Programmer", 150, 1999, true, "Editora 3")
outro_livro = Livro.new("Livro Qualuer", 200, 2017, true, "Editora 1")

estoque = Estoque.new

estoque << algoritmos << algoritmos << algoritmos << arquitetura << programmer << outro_livro << outro_livro
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende programmer

puts estoque.quantidade_de_vendas_de_titulo outro_livro
