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

	def my_all?
		return false unless block_given?
		self.my_each do |i|
			if !yield(i)
				return false
			end
		end
		return true
	end

	def my_any?
		if block_given?
			self.my_each do |i|
				if yield(i)
					return true
				end
			end
			return false
		else
			return true
		end
	end
	def my_none?
		return true unless block_given?
		self.my_each do |i|
			if yield(i)
				return false
			end
		end
		return true
	end

end

test_array = [7,1,2,3,4,5]
string_array = ["jaja","ola","hola"]

=begin
test_array.my_each do |i|
	puts "#{i}"
end

test_array.my_each_with_index do |i,index|
	puts "#{index}-> #{i} "
end


test_array.my_select do |num|
	num < 3
end

string_array.my_all? do |num|
	num.length >= 3
end



if test_array.my_any? do |num|
	num == 7
end

if string_array.my_none? do |num|
	num.length>3
end

=end