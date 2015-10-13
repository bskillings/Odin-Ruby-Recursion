class MergeSort
#Build a method #merge_sort that takes in an array and returns a sorted array,
#using a recursive merge sort methodology

	def initialize (array_to_sort)

		puts merge_sort(array_to_sort)

	end

	def merge_sort(array_to_sort)

		#base case
		if array_to_sort.length == 1
			return array_to_sort
		#all other cases (recursive part)	
		else
			#split into two arrays
			where_to_split = (array_to_sort.length / 2) - 1
			half_to_sort_1 = array_to_sort[0 .. where_to_split]
			half_to_sort_2 = array_to_sort[where_to_split+1 .. -1]
				
			#sort each of those
			half_sorted_1 = merge_sort(half_to_sort_1)
			half_sorted_2 = merge_sort(half_to_sort_2)
		
			#recombine by comparing, pushing, and deleting first elements
			sorted_array = []
			while half_sorted_1.length > 0
				if half_sorted_2.length < 1
					sorted_array.push(half_sorted_1)
					return sorted_array
				else
					h1_element = half_sorted_1[0] 
					h2_element = half_sorted_2[0]
					puts half_sorted_1
					puts h1_element.class
					if h1_element <= h2_element
						sorted_array.push(half_sorted_1.shift)
					else
						sorted_array.push(half_sorted_2.shift)
					end
				end
			end
			#return new sorted array
			return sorted_array
		end

	#first try comes out 1.  will have to look at this again

	end

	
end

end

sort_me = MergeSort.new([2, 5, 8, 3, 6, 9, 1, 4, 10, 7])
puts sort_me