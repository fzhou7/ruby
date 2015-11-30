def translate str
	str_arr = str.split
	new_str = []
	str_arr.each do |word|
		cons_arr = []
		count = 0
		if (word[0] == 'a') || (word[0] == 'e') || (word[0] == 'i') || (word[0] == 'o') || (word[0] == 'u')
			word<<'ay'
		else
			cons_arr = []
			count = 0
			while (word[count] != 'a') && (word[count] != 'e') && (word[count] != 'i') && (word[count] != 'o') && (word[count] != 'y') && (word[count] != 'u') do
				cons_arr.push(word[count])
				if (word[count] == 'q') && (word[count+1] == 'u')
					cons_arr.push(word[count+1])
				end
				count+=1
			end
			word.slice! cons_arr.join
			word<<cons_arr.join + 'ay'
		end
		new_str.push(word)
	end
	return new_str.join(" ")
end
=begin
def run
	puts "Enter the string you want translated:"
	input = gets.chomp
	if input == "exit"
		exit
	end
	puts translate(input).to_s
	run
end
run
=end