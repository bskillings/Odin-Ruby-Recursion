class IntConverter


	def initialize(roman)
		@roman_mapping = {
		  "M" => 1000,
		  "CM" => 900,
		  "D" => 500,
		  "CD" => 400,
		  "C" => 100,
		  "XC" => 90,
		  "L" => 50,
		  "XL" => 40,
		  "X" => 10,
		  "IX" => 9,
		  "V" => 5,
		  "IV" => 4,
		  "I" => 1
		}

		@problematic_combos = ["CM", "CD", "XC", "XL", "IX", "IV"]
		@roman_array = roman.split("")
		@sum = 0

		roman_to_int
		puts @sum
	end

	def roman_to_int
		if @roman_array.length > 0
			is_this_a_combo = [@roman_array[0], @roman_array[1]].join("")
			if @problematic_combos.include?(is_this_a_combo)
				@roman_array[1] = is_this_a_combo
				@roman_array.shift
			end
			@sum += @roman_mapping[@roman_array.shift]
			roman_to_int
		end
		return
		#look at letters two at a time.  If the first could cause problems, check the second
		#if no combo, add the first and dump it
		#if yes combo, mush together into second, then drop first, then add new first and dump it


	end


end

int1 = IntConverter.new("MCMXCIII")
int2 = IntConverter.new("LIV")