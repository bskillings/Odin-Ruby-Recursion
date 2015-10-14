#Build a method #merge_sort that takes in an array and returns a sorted array,
#using a recursive merge sort methodology

	def merge_sort(array_to_sort)

		#base case
		if array_to_sort.length < 2
			sorted_array = array_to_sort

		#all other cases (recursive part)	
		else
			#split into two arrays
			where_to_split = (array_to_sort.length / 2) - 1
			half_to_sort_1 = array_to_sort[0 .. where_to_split] #change sorted to to_sort
			half_to_sort_2 = array_to_sort[where_to_split+1 .. -1] #change sorted to to_sort
				
			#sort each of those
			half_sorted_1 = merge_sort(half_to_sort_1)
			half_sorted_2 = merge_sort(half_to_sort_2)

			#create blank array to hold elements
			sorted_array = []
			#while there is something in half1
			
			while half_sorted_1.length > 0
			
				#if half2 is empty, shove on the rest of half 1
				if half_sorted_2.length < 1
					sorted_array.concat half_sorted_1
					half_sorted_1 = []

				#compare first element of both halfs	
				else
					h1_element = half_sorted_1[0] 
					h2_element = half_sorted_2[0]
					#push whichever is smaller using shift to move the rest of the array
					if h1_element <= h2_element
						sorted_array.push(half_sorted_1.shift)
					else
						sorted_array.push(half_sorted_2.shift)
					end
				end
			end
			#if there is anything left in 2 after 1 is empty, push on the rest of half 2
			if half_sorted_2.length > 0
				sorted_array.concat half_sorted_2 
				half_sorted_2 = []
			end
			#return new sorted array
			return sorted_array
		end
	end
			

	

#okay, the current stuff works without the recursion, 
#if the smaller arrays are in order, except the 10 isn't showing up
#but when I try to recursive it, it hangs unless the halfs are in order already

print merge_sort([1, 3, 4, 7, 9, 2, 5, 6, 8, 10])
print merge_sort([5, 9, 1, 2, 8, 7, 4, 10, 3, 6])
print merge_sort([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print merge_sort([2, 2, 2, 2, 2, 2, 2])
print merge_sort([1])
print merge_sort([])
print merge_sort([-1, 2, -3, 4, -5, 6, 7, 8, 9, 10])
