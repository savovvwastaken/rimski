class RomeConverter

	ROMAN_NUMS = {
		1000 => "M",
		900 => "CM",
		500 => "D",
		400 => "CD",
		100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I"
	}

	def to_rome int_arg
		n = int_arg
		roman = ""
		ROMAN_NUMS.each do |value, letter|
			roman << letter*(n/value)
			n %= value
		end
		roman
	end

	def to_dec string_arg
		result = 0
		ROMAN_NUMS.each do |value, key|
			while string_arg.index(key) == 0
				result += value
				string_arg.slice!(key)
			end
		end
		result
	end
end
