class ArrayFlattener

	def initialize(array_to_flatten)
		print "#{array_to_flatten}\r\n"
		@result = []
		flatten_array(array_to_flatten)
		print "#{@result}\r\n"
	end


	def flatten_array(array)
		array.each do |i| 
			if i.kind_of?(Array)
				flatten_array(i)
			else
				@result.push(i)
			end 		
			
		end				
	end

end

try_me_1 = ArrayFlattener.new([[1, 2], [3, 4]])
try_me_2 = ArrayFlattener.new([[1, [8, 9]], [3, 4]])

#turns out this isn't working after all