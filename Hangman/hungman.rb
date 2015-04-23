require './hungmanclasses.rb'

teste = Arquivo.new("5desk.txt")
jogoteste = Jogo.new(teste.palavraFinal)


system("clear")
while !(jogoteste.fim?)
	jogoteste.palavraParcial
	print "\nInsira uma letra: "
	letra = gets.chomp
	jogoteste.jogada(letra) 
end


system("clear")
puts "\n\nParabéns, você venceu"
puts jogoteste.palavraParcial.to_s