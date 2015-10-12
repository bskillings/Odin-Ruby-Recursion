class Fibonacci

	def initialize(n)
		puts "Iteration:"
		puts fibs(n)
		puts "Recursion:"
		(n+1).times {|i| puts fibs_rec(i)}
	end

	#iteration: works, prints out whole list
	def fibs(n)
		fib_array = []
		0.upto(n) do |i|
			if i < 2
				fib_array[i] = i
			else
				fib_array[i] = (fib_array[i-2] + fib_array[i-1])
			end
		end
		puts fib_array
	end


	 #this currently returns only the number in the given slot
	def fibs_rec(n)
		n < 2 ? n : fibs_rec(n-1) + fibs_rec(n-2)
	end
end

fibs5 = Fibonacci.new(5)
fibs6 = Fibonacci.new(6)

