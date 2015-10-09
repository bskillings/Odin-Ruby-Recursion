def fibonacci(n)
	n < 2 ? n : fibs_rec(n-1) + fibs_rec(n-2)
end

puts fibonacci(2)
puts fibonacci(7)
