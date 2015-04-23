require 'matrix'

class Board

	def initialize
		@boardMatrix = Matrix.zero(3).to_a
	end


	def drawingBoard
		counter = 0 
		@boardMatrix.each_with_index do |value,linha|
			value.each_with_index do |valor,coluna|
				print "#{value}"
				if counter == 2 || counter == 5 || counter == 8
					puts ""
				end
				counter += 1
			end
		end
	end

	def moviment(value,posX,posY)
		#counter = 0
		@boardMatrix.each_with_index do |valor_linha,linha|
			valor_linha.each_with_index do |valor_coluna,coluna|
				if ( linha == posX) && ( coluna == posY)
					@boardMatrix[linha][coluna] = value
				end
			end
		end
	end

	#@boardMatrix[1][1]=3


end

class Player
	attr_accessor :name,:peca
end


system("clear")


teste = Board.new

jogador1 = Player.new


#teste.drawingBoard

#teste.moviment(3,1,1)
#teste.drawingBoard