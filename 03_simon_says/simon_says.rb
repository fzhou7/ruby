def echo input
	return input
end

def shout input
	return input.upcase
end

def repeat(str, num=2)
	new_str = str + " "
	str = (new_str*num).strip
	return str
end

def start_of_word(str, num)
	return str[0..num-1]
end

def first_word(str)
	str.split[0]
end

def titleize(str)
	str_arr = str.split
	new_str = []
	str_arr.each do |word|
		if (word.downcase == "is") || (word.downcase == "and") || (word.downcase == "a") || (word.downcase == "the") || (word.downcase == "over")
			new_str.push(word.downcase)
		else
			new_str.push(word.capitalize)
		end
	end
	new_str[0] = new_str[0].capitalize
	return new_str.join(" ")
end

