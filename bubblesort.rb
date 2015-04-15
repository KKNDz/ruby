def bubble_sort(vetor)

	i=vetor.length

	(0..i).reverse_each do |index|
		j = 0
		#print "\n" + index.to_s + " "
		(j..index-2).each do |indexJ|
			 #print vetor[indexJ+1]
			if vetor[indexJ] > vetor[indexJ+1]
				aux = vetor[indexJ]
				vetor[indexJ] = vetor[indexJ+1]
				vetor[indexJ+1] = aux
			end
		end
	end
	return vetor
end

def bubble_sort_by(vetor)

	i=vetor.length

	(0..i).reverse_each do |index|
		j = 0
		#print "\n" + index.to_s + " "
		(j..index-2).each do |indexJ|
			 #print vetor[indexJ+1]
			if (vetor[indexJ+1].length - vetor[indexJ].length) < 0	
				aux = vetor[indexJ]
				vetor[indexJ] = vetor[indexJ+1]
				vetor[indexJ+1] = aux
			end
		end
	end	
	return vetor

end


print bubble_sort([5,8,1,2,9,3,5,3])
print bubble_sort([4,3,78,2,0,2])
print "\n"



print bubble_sort_by(["hi","hello","hey"])

