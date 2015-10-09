#again, it makes no sense to use recursion for this

def bottles_of_beer_non_recursive (n)
	n.downto(0) do |n|
		if n == 0
			print "No more "
		else
			print "#{n} "
		end
		print "bottles of beer on the wall\r\n"
	end
end

#see that's working.  now to change it to recursive

def bottles_of_beer (n)
	return "No more bottles of beer on the wall" if n == 0
	return "#{n} bottles of beer on the wall\r\n" +  bottles_of_beer(n-1)
end

#I'm okay with this.  it's building a string but it does work. theirs puts and then just runs it again

puts bottles_of_beer(5)
puts bottles_of_beer(0)
puts bottles_of_beer(10)
