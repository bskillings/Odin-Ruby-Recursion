def flatten_array(array)
	new_array = []
	array.each do |i| 
		if i.kind_of?(Array)
			flatten_array(i)
		end 
	new_array.push(i)
	end
	new_array
end

puts flatten_array([[1, 2], [3, 4]])
puts flatten_array([[1, [8, 9]], [3, 4]])

#I think this is working