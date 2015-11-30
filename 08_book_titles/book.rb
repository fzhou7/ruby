class Book
	attr_accessor :title

	def title
		title_arr = @title.split.map do |word|
			if (word == 'the') || (word == 'a') || (word == 'an') || (word == 'and') || (word == 'in') || (word == 'of')
				word.downcase
			else
				word.capitalize
			end
		end
		title_arr[0] = title_arr[0].capitalize
		title_arr.join(" ")
	end

end