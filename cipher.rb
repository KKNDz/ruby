def stringtoint(frase)#dividir a string por letra e dps transforma em integer
	array_frase = frase.split(//)#divid string por letras
	arrayint = Array.new#cria array nil
	array_frase.each do |item|#loop para transformar letra em integer
		x = item
		arrayint.push(x.ord)
	end
	#print arrayint
	inttocipher(arrayint)
end

def inttocipher(frase)
	#print frase
	cipherarray = Array.new
	frase.each do |item|
		if item > 95
			if item > 119
				cipherarray.push(item-23)
			else
				cipherarray.push(item+3)
			end
		else
			cipherarray.push(' ')
		end

	end
	#print cipherarray

	cipherarray.each do |item|
		print item.chr
	end
end

print "Insira a frase: "
frase = gets.chomp

stringtoint(frase)
