require './hungmanclasses.rb'

print "Carregar jogo(y/n): "
resposta = gets.chomp

if resposta == "y"
	arquivo = File.open("./save.jog","r")
	jogoteste = Marshal::load(arquivo)
else
teste = Arquivo.new("5desk.txt")
jogoteste = Jogo.new(teste.palavraFinal)
end

system("clear")
while !(jogoteste.fim?)
	jogoteste.palavraParcial
	puts "\nErros: " + jogoteste.errosr.to_s
	print "\nInsira uma letra: "
	letra = gets.chomp
	if letra == "salvar"
		arquivo = File.open("./save.jog","w")
		arquivo.puts Marshal::dump(jogoteste)
		puts "Jogo salvo e finalizado"
		exit
	end
	jogoteste.jogada(letra) 
end


system("clear")

if jogoteste.getPc == jogoteste.getPl
	puts "\n\nParabéns, você venceu"
	puts jogoteste.palavraParcial
else
	puts "\n\nVocê perdeu! "
	print jogoteste.getPc
end