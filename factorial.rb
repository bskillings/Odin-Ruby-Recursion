def factorial(n)
	return 1 if n == 1
	factorial(n-1) * n
end

puts factorial(4)
puts factorial(6)