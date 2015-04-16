module Enumerable
	

	def my_each
		return self unless block_given?
		for i in 0...self.size		
			yield(self[i])
		end
	end

	def my_each_with_index
		return self unless block_given?
		for i in 0...length		
			yield(self[i],i)
		end
	end

=begin
	def my_select
		return self unless block_given?
		for i in 0..length
			yield(self[i]==x)
		end
	end
=end

	def my_select
		return self unless block_given?
		new_array = []
		self.my_each do |i|
			if yield(i)
				new_array << i
			end
		end
		new_array
		print new_array
	end






end


[7,1,2,3,4,5].my_each do |i|
	puts "#{i}"
end


[1,2,3,4,5,6].my_each_with_index do |i,index|
	puts "#{index}-> #{i} "
end

		
[7,2,3,4,5,6].my_select do |num,array|
	num %1 == 0
end