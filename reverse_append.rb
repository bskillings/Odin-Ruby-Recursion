def reverse_append (ary, n)
	return ary if n < 0
	ary.unshift(n)
	reverse_append(ary, n-1)
end

puts reverse_append([], 2)
puts reverse_append([], 5)