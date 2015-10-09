def palindrome_non_recursive(test_string)
	test_string.gsub!(" ", "")
	reverse_string = test_string.reverse
	test_string.downcase == reverse_string.downcase
end

#I have no idea how to make this recursive.  I would just strip the spaces, reverse the string, and compare

#copied from codequizzes.com
def palindrome (string)
	if string.length == 1 || string.length == 0
		true
	else
		if string[0] == string[-1]
			palindrome(string[1..-2])
		else
			false
		end
	end
end

puts palindrome("racecar")
puts palindrome("Mr owl ate my metal worm")
puts palindrome("potato")

#but mine is better because it's shorter and it caught the spaces.