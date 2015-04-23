class Arquivo

	def initialize(nomearquivo)
		@arquivo = File.open(nomearquivo,"r")
		leitor()
	end

	def linhas
		counter = 0
		return @palavras.length
		#return counter
	end

	def leitor()
		@palavras = Array.new
		@arquivo.readlines.each do |linha|
			@palavras << linha
		end
		# @palavras
	end

	def randomPalavra
		numeroRandom = rand(1..linhas)
		return numeroRandom
	end

	def encontrarPalavra
		palavra = randomPalavra
		counter = 0
		@palavras.each do |linha|
			#print linha
			if counter == palavra
				return linha
			end

			counter += 1
		end
	end

	def palavraFinal
		achou = false
		while !achou
			@palavraFinal = encontrarPalavra
			if @palavraFinal.length >= 6 && @palavraFinal.length<=13
				achou = true
			end
		end
		print @palavraFinal
		@palavraFinal = @palavraFinal.split('')
		@palavraFinal.pop(2)
		@palavraFinal[0] = @palavraFinal[0].downcase
		return @palavraFinal
	end
end

class Jogo

	def initialize(palavra)
		@palavra = palavra
		@palavraJogador = []
		@palavra.each do |i|
			@palavraJogador << "_"
		end
		#print @palavra
		#print @palavraJogador
	end

	def jogada(x)

		@palavra.each_with_index do |letra,index|
			if x == letra
				@palavraJogador[index] = x
			end
		end
	end

	def palavraParcial
		print @palavraJogador
	end

	def fim?
		@palavraJogador.each do |letra|
			if letra == "_"
				return false
			end
		end
		return true
	end


end
