def fibonacci(n)
	return 0 if n == 0
	return 1 if n == 1
	return fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(2)
puts fibonacci(7)

#oh yeah, worked on first try